import 'package:absensi/app_event.dart';
import 'package:absensi/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocs extends Bloc<AppEvent,AppState>{
  AppBlocs():super(InitState()){
    print("LU OLANG CHAWNIMA");
    on<Increment>((event, ask) {
      ask(AppState(counter: state.counter!+1));
      print(state.counter);
    });
    on<Decrement>((event, ask) {
      ask(AppState(counter: state.counter!- 1));
      print(state.counter);
    });
  }

}