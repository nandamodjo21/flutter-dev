import 'package:absensi/app/data/module/view/bloc/login_event.dart';
import 'package:absensi/app/data/module/view/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocs extends Bloc<LoginEvent,LoginState>{
  LoginBlocs(): super(const LoginState()){
    on<EmailEvent>(_emailEvent);

    on<PasswordEvent>(_passwordEvent);
  }
  void _emailEvent(EmailEvent event, Emitter<LoginState>emit){
    print("my email is ${event.email}");
    emit(state.copyWith(email: event.email));
  }
  void _passwordEvent(PasswordEvent event, Emitter<LoginState>emit){
    print("my email is ${event.password}");
    emit(state.copyWith(email: event.password));
  }

}