part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getAllCategories() = _GetAllCategories;
  const factory SearchEvent.getAllSubcategories(String categoryId) =
      _GetAllSubcategories;

  const factory SearchEvent.getAllCompanies() = _GetAllCompanies;
  const factory SearchEvent.getCompanyCatalog(String companyId) =
      _GetCompanyCatalog;
  const factory SearchEvent.searchCompany(String companySearch) =
      _SearchCompany;
  const factory SearchEvent.searchCompanyById(String firmId) =
      _SearchCompanyById;
  const factory SearchEvent.getCompanyProductsByCategory(
      String categoryId, String companyId) = _GetCompanyProductsByCategory;

  const factory SearchEvent.getProductsByCategory(String categoryId) =
      _GetProductsByCategory;

  const factory SearchEvent.searchProducts(String request) = _SearchProducts;

  const factory SearchEvent.searchProductsByCompany(
      String request, String companyId) = _SearchProductsByCompany;

  const factory SearchEvent.searchProductsByCategory(
      String request, String categoryId) = _SearchProductsByCategory;

  const factory SearchEvent.searchProductsByCompanyAndCategory(
          String request, String companyId, String categoryId) =
      _SearchProductsByCompanyAndCategory;
}
