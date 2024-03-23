import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/presentation/favorite/view/bloc/favorite_bloc.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../main/ data/models/company.dart';
import '../../../main/view/widgets/company_card.dart';

class FavoriteCompaniesWidget extends StatefulWidget {
  final Function(Company) onCompanyCatalog;
  final Function(Company) onCompanyInfo;

  const FavoriteCompaniesWidget(
      {Key? key, required this.onCompanyCatalog, required this.onCompanyInfo})
      : super(key: key);

  @override
  State<FavoriteCompaniesWidget> createState() => _CompaniesWidgetState();
}

class _CompaniesWidgetState extends State<FavoriteCompaniesWidget> {
  final List<Company> _companies = <Company>[];

  @override
  void initState() {
    BlocProvider.of<FavoriteBloc>(context)
        .add(const FavoriteEvent.getFavoriteCompanies());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Column(
      children: [
        BlocListener<FavoriteBloc, FavoriteState>(
          listener: (context, state) {
            state.maybeMap(
                companyRemoved: (response) => {
                      if (response.response.result)
                        BlocProvider.of<FavoriteBloc>(context)
                            .add(const FavoriteEvent.getFavoriteCompanies())
                    },
                orElse: () => {});
          },
          child: BlocBuilder<FavoriteBloc, FavoriteState>(
              builder: (context, state) => state.maybeMap(
                    orElse: () {
                      return const SizedBox();
                    },
                    loading: (_) {
                      return Container(
                          child: const Center(child: CircularProgressIndicator()));
                    },
                    companiesLoaded: (response) {
                      if (response.response.massiv_id.isNotEmpty) {
                        var companies = response.response.massiv_id
                            .map((e) => Company(
                                favorit_id: e.favorit_id,
                                favorites: e.favorites,
                                ogrn: e.ogrn,
                                dostavka: e.dostavka,
                                recipient: e.recipient,
                                bank: e.bank,
                                cor_account: e.cor_account,
                                pay_account: e.pay_account,
                                bic: e.bic,
                                id: e.id,
                                name: e.name,
                                opisanie: e.opisanie,
                                address: e.address,
                                count_prod: e.count_prod,
                                inn: e.inn,
                                raz_skidka: e.raz_skidka,
                                summa_skidka: e.summa_skidka))
                            .toList();

                        _companies.clear();
                        _companies.addAll(companies);

                        return Scrollbar(
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
                        return Center(
                          child: Text(
                            "Список избранных продавцов пуст",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: colorTheme.greyText),
                          ),
                        );
                      }
                    },
                  )),
        ),
      ],
    );
  }

  void _favorite(Company company) {
    BlocProvider.of<FavoriteBloc>(context)
        .add(FavoriteEvent.removeFromFavorite(company.favorit_id ?? ""));
  }
}
