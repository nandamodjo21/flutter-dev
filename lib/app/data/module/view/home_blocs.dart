import 'package:absensi/app/data/module/view/home_event.dart';
import 'package:absensi/app/data/module/view/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBlocs extends Bloc<HomeEvent, HomeState> {
  HomeBlocs(): super(HomeState()){
    print("WALAW EE");
    on<HomeEvent>((event, emit) {
      emit(HomeState(page: state.page));
    });
  }

}

