import 'package:flower_boutique/feature/catalog/data/models/catalog_bouquets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'basket_event.dart';
part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  BasketBloc() : super(BasketList([])) {
    on<BasketEvent>((event, emit) {});
  }
}
