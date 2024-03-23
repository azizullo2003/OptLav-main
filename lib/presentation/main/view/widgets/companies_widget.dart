import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:optlove/presentation/main/%20data/models/company.dart';
import 'package:optlove/presentation/main/view/bloc/search_bloc.dart';
import 'package:optlove/presentation/main/view/widgets/company_card.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../../favorite/view/bloc/favorite_bloc.dart';

class CompaniesWidget extends StatefulWidget {
  final Function(Company) onCompanyCatalog;
  final Function(Company) onCompanyInfo;
  final VoidCallback scrollListener;
  final bool? fromOrder;
  final ScrollController scroll;
  final double scrollPosition;

  const CompaniesWidget(
      {Key? key,
      required this.onCompanyCatalog,
      required this.onCompanyInfo,
      this.fromOrder,
      required this.scrollListener,
      required this.scroll,
      required this.scrollPosition})
      : super(key: key);

  @override
  State<CompaniesWidget> createState() => _CompaniesWidgetState();
}

class _CompaniesWidgetState extends State<CompaniesWidget> {
  final TextEditingController _searchCompanyController =
      TextEditingController();
  var _prev = "";
  Timer? _debounceSearchTimer;
  final List<Company> _companies = <Company>[];

  @override
  void initState() {
    if (widget.fromOrder == null) {
      BlocProvider.of<SearchBloc>(context).add(const SearchEvent.getAllCompanies());
    }
    _searchCompanyController.addListener(() {
      if (_prev != _searchCompanyController.text) {
        _prev = _searchCompanyController.text;

        _debounceSearchTimer?.cancel();

        if (_searchCompanyController.text.length > 2) {
          _debounceSearchTimer = Timer(const Duration(milliseconds: 500), ()
          {
            BlocProvider.of<SearchBloc>(context)
                .add(SearchEvent.searchCompany(_searchCompanyController.text));
          });
        }

        if (_searchCompanyController.text.isEmpty) {
          BlocProvider.of<SearchBloc>(context)
              .add(const SearchEvent.getAllCompanies());
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchCompanyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return BlocListener<FavoriteBloc, FavoriteState>(
      listener: (context, state) {
        state.maybeMap(
            companyAdded: (respone) => {
                  if (respone.response.result)
                    {
                      print("CompaniesWidget избран"),
                      Fluttertoast.showToast(
                          msg: "Продавец добавлен в избранное",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.grey,
                          textColor: Colors.white,
                          fontSize: 16.0)
                    }
                },
            companyRemoved: (response) => {
                  if (response.response.result)
                    {
                      Fluttertoast.showToast(
                          msg: "Продавец был удалён из избранного",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.grey,
                          textColor: Colors.white,
                          fontSize: 16.0)
                    }
                },
            orElse: () => {});
      },
      child: Column(
        children: [
          TextField(
            scrollPadding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom + 100),
            controller: _searchCompanyController,
            decoration: InputDecoration(
                prefixIcon: Assets.images.search.svg(fit: BoxFit.none),
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                filled: true,
                fillColor: colorTheme.borderGray,
                enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xF3F3F3FF), width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xF3F3F3FF), width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                hintText: 'Введите название продукта',
                hintStyle: TextStyle(
                    color: colorTheme.greyText,
                    fontSize: 17,
                    fontWeight: FontWeight.w400)),
          ),
          const SizedBox(height: 16),
          BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) => state.maybeMap(orElse: () {
                    return const SizedBox();
                  }, loading: (_) {
                    return Container(
                        child: const Center(child: CircularProgressIndicator()));
                  }, companiesLoaded: (response) {
                    var companies = response.response
                        .map((e) => Company(
                            favorites: e.user_info.favorites,
                            ogrn: e.user_info.ogrn,
                            dostavka: e.user_info.dostavka,
                            recipient: e.user_info.recipient,
                            bank: e.user_info.bank,
                            cor_account: e.user_info.cor_account,
                            pay_account: e.user_info.pay_account,
                            bic: e.user_info.bic,
                            id: e.user_info.id,
                            name: e.user_info.name,
                            opisanie: e.user_info.opisanie,
                            address: e.user_info.address,
                            count_prod: e.user_info.count_prod,
                            inn: e.user_info.inn,
                            summa_skidka: e.user_info.summa_skidka,
                            raz_skidka: e.user_info.raz_skidka))
                        .toList();

                    _companies.clear();
                    _companies.addAll(companies);
                    widget.scroll.jumpTo(widget.scrollPosition);

                    return ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: _companies.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CompanyCard(
                                onCompanyCatalog: () =>
                                    widget.onCompanyCatalog(_companies[index]),
                                onCompanyInfo: () =>
                                    widget.onCompanyInfo(_companies[index]),
                                company: _companies[index],
                                addOrDelFaovrite: () =>
                                    _favorite(_companies[index])),
                          );
                        });
                  }, companiesFounded: (response) {
                    if (response.response.isNotEmpty) {
                      var companies = response.response
                          .map((e) => Company(
                          favorites: e.user_info.favorites,
                          ogrn: e.user_info.ogrn,
                          dostavka: e.user_info.dostavka,
                          recipient: e.user_info.recipient,
                          bank: e.user_info.bank,
                          cor_account: e.user_info.cor_account,
                          pay_account: e.user_info.pay_account,
                          bic: e.user_info.bic,
                          id: e.user_info.id,
                          name: e.user_info.name,
                          opisanie: e.user_info.opisanie,
                          address: e.user_info.address,
                          count_prod: e.user_info.count_prod,
                          inn: e.user_info.inn,
                          summa_skidka: e.user_info.summa_skidka,
                          raz_skidka: e.user_info.raz_skidka))
                          .toList();

                      _companies.clear();
                      _companies.addAll(companies);
                      return Scrollbar(
                        controller: widget.scroll,
                        child: ListView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: _companies.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CompanyCard(
                                  onCompanyCatalog: () => widget
                                      .onCompanyCatalog(_companies[index]),
                                  onCompanyInfo: () =>
                                      widget.onCompanyInfo(_companies[index]),
                                  company: _companies[index],
                                  addOrDelFaovrite: () =>
                                      _favorite(_companies[index]),
                                ),
                              );
                            }),
                      );
                    } else {
                      return const Center(
                          child: Text("Компания с таким названием не найдена"));
                    }
                  })),
        ],
      ),
    );
  }

  void _favorite(Company company) {
    widget.scrollListener();
    if (company.favorites == "0") {
      BlocProvider.of<FavoriteBloc>(context)
          .add(FavoriteEvent.addToFavorite(company.id));
    } else {
      BlocProvider.of<FavoriteBloc>(context)
          .add(FavoriteEvent.removeFromFavorite(company.id));
    }
    BlocProvider.of<SearchBloc>(context).add(const SearchEvent.getAllCompanies());
  }
}
