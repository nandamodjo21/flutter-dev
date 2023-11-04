import 'package:absensi/app/data/module/view/bloc/login_blocs.dart';
import 'package:absensi/common/widgets/flutter_toast.dart';
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
          toastInfo(msg: "Email harus di isi");
          return;
        }
        if(password.isEmpty){
         toastInfo(msg: "password harus di isi");
         print(toastInfo(msg: "msg"));
         return;
        }
        try{
          final credential = await FirebaseAuth
              .instance
              .signInWithEmailAndPassword(
              email: emailAddress,
              password: password);
          if(credential.user==null){
            toastInfo(msg: "kosong");
            return;
          }
          if(!credential.user!.emailVerified){
            toastInfo(msg: "email belum diverifikasi");
            return;
          }
          var user = credential.user;
          if(user!=null){
            print("user ada");
          } else{
            toastInfo(msg: "user tidak terdaftar");
            return;
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