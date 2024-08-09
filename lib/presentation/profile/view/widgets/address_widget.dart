import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/presentation/profile/view/widgets/profile_text_field.dart';
import 'package:searchfield/searchfield.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../../registration/domain/entities/cities.dart';
import '../../../registration/view/bloc/search_city_bloc.dart';

// ignore: must_be_immutable
class AddressPage extends StatefulWidget {
  final int addressNumber;
  final VoidCallback? removeAddress;
  final VoidCallback? citySelectListener;
  final Cities? city;
  final bool? readonly;
  String cityString = "";
  String address = "";
  String comment = "";

  AddressPage(
      {super.key,
      required this.addressNumber,
      this.removeAddress,
      this.city,
      this.readonly,
      this.citySelectListener});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  static final List<Cities> _cities = <Cities>[];
  var showSuggestion = true;
  Cities? _selectedCity;
  var citySelected = false;
  final singleFormat = FilteringTextInputFormatter.singleLineFormatter;

  final TextEditingController cityController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.city != null) {
      _cities.add(widget.city!);
      cityController.text = widget.city!.name ?? "";
      addressController.text = widget.city!.adres ?? "";
      commentController.text = widget.city!.descrip ?? "";
      widget.cityString =
          "${widget.city!.country_id}|${widget.city!.region_id}|${widget.city!.city_id}";
      widget.address = widget.city!.adres ?? "";
      widget.comment = widget.city!.descrip ?? "";
    }
    cityController.addListener(() {
      if (cityController.text.length > 2) {
        setState(() {
          showSuggestion = true;
          BlocProvider.of<SearchCityBloc>(context).add(
            SearchCityEvent.searchCity(city: cityController.text),
          );
        });
      } else {
        setState(() {
          _cities.clear();
          showSuggestion = false;
        });
      }
      if (cityController.text.length != _selectedCity?.name?.length) {
        setState(() {
          citySelected = false;
        });
      }
    });

    addressController.addListener(() {
      widget.address = addressController.text;
    });

    commentController.addListener(() {
      widget.comment = commentController.text;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Text(
              "Адрес №${widget.addressNumber}",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.greyBarBottomText),
            ),
            const Spacer(),
            if (widget.addressNumber != 1)
              GestureDetector(
                  onTap: widget.removeAddress, child: Assets.images.trash.svg())
          ],
        ),
        const SizedBox(height: 30),
        BlocConsumer<SearchCityBloc, SearchCityState>(
          listener: (context, state) {
            state.map(
                failure: (loaded) {},
                loading: (_) {},
                loaded: (response) {
                  if (response.response.location.isNotEmpty) {
                    _cities.clear();
                    _cities.addAll(response.response.location);
                  } else {
                    //_onSuccessAuth(context);
                  }
                });
          },
          builder: (context, state) {
            return Form(
                child: SearchField(
              //offset: const Offset(0,-50),
              controller: cityController,
              suggestions: _cities
                  .map((city) =>
                      SearchFieldListItem("  ${city.name}", item: city))
                  .toList(),
              suggestionState: Suggestion.hidden,
              suggestionAction: SuggestionAction.unfocus,
              textInputAction: TextInputAction.next,
              searchStyle: TextStyle(
                fontSize: 18,
                color: Colors.black.withOpacity(0.8),
              ),
              validator: (x) {
                if (!_cities.contains(x) || x!.isEmpty) {
                  return 'Please Enter a valid State';
                }
                return null;
              },
              searchInputDecoration: InputDecoration(
                  suffixIconConstraints:
                      const BoxConstraints(minHeight: 20, minWidth: 20),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: colorTheme.borderGray)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: colorTheme.borderGray)),
                  labelText: "Ваш город",
                  labelStyle: TextStyle(
                      color: colorTheme.greyText,
                      fontSize: 17,
                      fontWeight: FontWeight.normal)),
              maxSuggestionsInViewPort: 5,
              itemHeight: 40,
              onSuggestionTap: (SearchFieldListItem<Cities> city) => {
                //widget.citySelectListener;
                widget.cityString =
                    "${city.item!.country_id}|${city.item!.region_id}|${city.item!.id}",

                setState(() {
                  widget.cityString =
                      "${city.item!.country_id}|${city.item!.region_id}|${city.item!.id}";
                  // citySelected = true;
                  // checkFields();
                  // _selectedCity = city.item!;
                })
              },
            ));
          },
        ),
        const SizedBox(height: 30),
        ProfileTextField(
            readOnly: widget.readonly,
            labelText: "Адрес",
            length: 40,
            keyboardType: TextInputType.text,
            inputFormatters: singleFormat,
            controller: addressController,
            function: () => addressController.clear()),
        const SizedBox(height: 30),
        ProfileTextField(
            labelText: "Комментарии",
            keyboardType: TextInputType.text,
            inputFormatters: singleFormat,
            controller: commentController,
            function: () => commentController.clear()),
        const SizedBox(height: 30),
      ]),
    );
  }
}
