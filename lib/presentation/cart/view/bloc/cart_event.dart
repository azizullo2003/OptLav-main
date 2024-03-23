part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart(
      String id_product, String count, String name, String firm_id, String price
      ) = _AddToCart;

  const factory CartEvent.changeCart(
      String id_product, String count, String name, String firm_id, String price
      ) = _ChangeCart;
}
