import 'package:dart_keywords/models/counter_event.dart';
import 'package:dart_keywords/models/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(super.initialState) {
    on((CounterEvent event, Emitter<CounterState> emit) {
      if (event is IncrementEvent) {
        emit(CounterValueState(state.counter! + 1));
      }
      if (event is DecrementEvent) {
        emit(CounterValueState(state.counter! - 1));
      }
    });
  }
}
