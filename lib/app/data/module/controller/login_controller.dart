import 'package:absensi/app/data/module/view/bloc/login_blocs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginController{
  final BuildContext context;

  const LoginController({required this.context});
  Future<void> handleLogin(String type) async {
    try{
      if(type=="email"){
        final state = context.read<LoginBlocs>().state;
        String emailAddress = state.email;
        String password = state.password;
        if(emailAddress.isEmpty){
          print("email kosong");
        }
        if(password.isEmpty){
          print("password kosong");
        }
        try{
          final credential = await FirebaseAuth
              .instance
              .signInWithEmailAndPassword(
              email: emailAddress,
              password: password);
          if(credential.user==null){
            //
          }
          if(!credential.user!.emailVerified){
            //
          }
          var user = credential.user;
          if(user!=null){
            //
          } else{
            //
          }
        }catch(e){
          //
        }
      }
    }catch(e){
      //
    }
  }
}