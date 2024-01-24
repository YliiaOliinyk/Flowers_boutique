part of 'basket_bloc.dart';

sealed class BasketState {}

final class BasketList extends BasketState {
  final List<CatalogBouquets> itemsFlower;

  BasketList(this.itemsFlower);
}
