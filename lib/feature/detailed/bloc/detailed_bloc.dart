import 'package:flutter_bloc/flutter_bloc.dart';


part 'detailed_event.dart';
part 'detailed_state.dart';

class DetailedBloc extends Bloc<DetailedEvent, DetailedState> {
  DetailedBloc() : super(DetailedInitial()) {
    on<DetailedEvent>((event, emit) {
      
    });
  }
}
