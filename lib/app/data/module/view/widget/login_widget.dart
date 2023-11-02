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

Widget buildLogin(BuildContext context){
  return Center(
    child: Container(
      padding: EdgeInsets.only(
        left: 50.w,
        right: 50.w
      ),
      margin: EdgeInsets.only(
        top: 40.h,
        bottom: 20.h
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _reusableIcons("facebook"),
          _reusableIcons("apple"),
          _reusableIcons("google"),
        ],
      )
    ),
  );
}
Widget _reusableIcons(String iconName){
  return GestureDetector(
    onTap: (){

    },
    child: SizedBox(
      width: 40.w,
      height: 40.w,
      child: Image.asset("assets/icons/$iconName.png"),
    ),
  );
}
Widget reusableText(String text){
 return Container(
    margin:EdgeInsets.only(bottom: 5.h,) ,
   child: Text(
     text,
     style: TextStyle(
       fontSize: 15.sp,
       color: Colors.grey.withOpacity(0.5),
       fontWeight: FontWeight.normal
     ),
   ),
  );
}