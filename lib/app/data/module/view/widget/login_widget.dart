import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar(){
  String login ="LOGIN";

  return  AppBar(
    backgroundColor:Colors.white ,
    bottom: PreferredSize(
      preferredSize: const  Size.fromHeight(1.0),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 1.0,

      ),
    ),
    flexibleSpace: Center(
      child: Text(
        login,
        style: TextStyle(
            color: Colors.black,
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontSize: 20.sp,

            fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}