import 'package:absensi/app/data/module/controller/login_controller.dart';
import 'package:absensi/app/data/module/view/bloc/login_blocs.dart';
import 'package:absensi/app/data/module/view/bloc/login_event.dart';
import 'package:absensi/app/data/module/view/bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/login_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBlocs,LoginState>(
      builder:(context, state){
        return Container(
          color: Colors.grey,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: buildAppBar(),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildLogin(context),
                    Center(child: reusableText("Or use email account login")),
                    Container(
                      margin: EdgeInsets.only(top: 66.h),
                      padding: EdgeInsets.only(left: 25.w, right: 25.w),
                      child:   Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          reusableField("Email"),
                          SizedBox(height: 5.h,),
                          buildTextField("Enter You're Emaill Address..", "email","user",
                              (value){
                            context.read<LoginBlocs>().add(EmailEvent(value));
                              }),
                          reusableField("Password"),
                          SizedBox(height: 5.h,),
                          buildTextField("Enter You're Emaill Password..", "password","lock", (value){
                            context.read<LoginBlocs>().add(PasswordEvent(value));
                          }),

                        ],
                      ),
                    ),
                    forgotPass(),
                    buildButtonLogAndReg("Log In","login",(){
                      LoginController(context: context).handleLogin("email");
                    }),
                    buildButtonLogAndReg("Registration","register",(){
                     Navigator.of(context).pushNamed("register");
                    }),

                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
