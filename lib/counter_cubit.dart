import 'package:cubit_state_management_practice/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterState(count: 0)){

  }
  void incrementCount(){
     int newValue= state.count+1;
     emit(CounterState(count: newValue));
  }

}
