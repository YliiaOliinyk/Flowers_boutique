import 'package:flutter_bloc/flutter_bloc.dart';


part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc() : super(CatalogInitial()) {
    on<CatalogEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
