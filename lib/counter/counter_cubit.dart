import 'package:bloc_increment_app/counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counter: 0));

  increment() => emit(CounterState(counter: state.counter + 1));

  decrement() => emit(CounterState(counter: state.counter - 1));
}
