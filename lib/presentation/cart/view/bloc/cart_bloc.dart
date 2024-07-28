import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/standart_post_response.dart';
import '../../../orders/domain/repositories/orders_repository.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final OrdersRepository repository;

  CartBloc(this.repository) : super(const CartState.loading()) {
    on<CartEvent>((event, emit) async {
      emit(const CartState.loading());
      await event.when<Future<void>>(
        addToCart: (String id_product, String count, String name,
                String firm_id, String price) async =>
            (await repository.addToCart(
                    id_product, count, name, firm_id, price))
                .fold(
          (l) => emit(CartState.failure(l)),
          (r) => emit(CartState.loaded(r)),
        ),
        changeCart: (String id_product, String count, String name,
                String firm_id, String price) async =>
            (await repository.addToCart(
                    id_product, count, name, firm_id, price))
                .fold(
          (l) => emit(CartState.failure(l)),
          (r) => emit(CartState.changed(r)),
        ),
      );
    });
  }
}
