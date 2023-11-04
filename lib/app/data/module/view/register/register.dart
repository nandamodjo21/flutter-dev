import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/common_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
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
                            // context.read<LoginBlocs>().add(EmailEvent(value));
                          }),
                      reusableField("Password"),
                      SizedBox(height: 5.h,),
                      buildTextField("Enter You're Emaill Password..", "password","lock", (value){
                        // context.read<LoginBlocs>().add(PasswordEvent(value));
                      }),

                    ],
                  ),
                ),
                forgotPass(),
                buildButtonLogAndReg("Registration","register",(){

                }),
                buildButtonLogAndReg("Log In","login",(){
                  Navigator.of(context).pushNamed("login");
                }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
