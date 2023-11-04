import 'package:absensi/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

AppBar buildAppBar(){
  String login ="LOGIN";

  return  AppBar(
    backgroundColor:Colors.white ,
    bottom: PreferredSize(
      preferredSize: const  Size.fromHeight(1.0),
      child: Container(
        color: AppColors.primarySecondaryBackground,
        height: 1.0,

      ),
    ),
    flexibleSpace: Center(
      child: Text(
        login,
        style: TextStyle(
            color: AppColors.primaryText,
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
Widget reusableField(String text){
  return Container(
    margin:EdgeInsets.only(bottom: 5.h),
    child: Text(
      text,
      style: TextStyle(
          fontSize: 15.sp,
          color: Colors.black,
          fontWeight: FontWeight.normal
      ),
    ),
  );
}
Widget buildTextField(String text, String textType, String iconName, void Function(String value)? func
    ){
  return Container(
    width: 325.w,
    height: 50.h,
    margin: EdgeInsets.only(bottom: 20.h),
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.1),
      borderRadius: BorderRadius.all(Radius.circular(15.w)),
        border: Border.all(color: AppColors.primaryFourElementText)
    ),
    child: Row(
      children: [
        Container(
          width: 16.w,
          margin: EdgeInsets.only(left: 17.w),
          height: 16.w,
          child: Image.asset("assets/icons/$iconName.png"),
        ),
        SizedBox(
          width: 270.w,
          height: 50.h,
          child: TextField(
            onChanged:(value)=>func!(value) ,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: text,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                )
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              hintStyle: TextStyle(
                color: AppColors.primarySecondaryElementText,
                height: 2.w
              ),

            ),
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: "Avenir",
              fontWeight: FontWeight.normal,
              fontSize: 14.sp
            ),
            autocorrect: false,
            obscureText: textType=="password"?true:false,
          ),
        )
      ],
    ),
  );
}
Widget forgotPass( ){
  return Container(
    margin: EdgeInsets.only(left: 25.w),
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
      onTap: (){

      },
      child: Text(
        "lupa password?",
        style: TextStyle(
          color: AppColors.primaryText,
          decoration: TextDecoration.underline,
          fontSize: 12.sp,
          decorationColor: AppColors.primaryText
        ),
      ),
    ),
  );
}
Widget buildButtonLogAndReg(String buttonName, String buttonType, void Function()? func){
  return GestureDetector(
    onTap: ()=> func,
    child: Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(left: 25.w, right: 25.w, top: buttonType=="login"?40.h:20.h),
      decoration: BoxDecoration(
        color:buttonType =="login"?AppColors.primaryElement:AppColors.primaryBackground,
        borderRadius: BorderRadius.circular(15.w),
        border: Border.all(
          color: buttonType =="login"?Colors.transparent:AppColors.primaryFourElementText
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
            color: Colors.grey.withOpacity(0.1)
          )
        ]
      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            color:buttonType =="login"? AppColors.primaryBackground:AppColors.primaryText,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal,

          ),
        ),
      ),
    ),
  );
}


void showToast() {
  Fluttertoast.showToast(
    msg: "berhasil",
    toastLength: Toast.LENGTH_SHORT, // Durasi tampilan toast
    gravity: ToastGravity.BOTTOM, // Posisi toast (TOP, CENTER, BOTTOM)
    timeInSecForIosWeb: 1, // Durasi tampilan untuk platform iOS
    backgroundColor: Colors.black87, // Warna latar belakang toast
    textColor: Colors.white, // Warna teks pada toast
    fontSize: 16.0, // Ukuran teks
  );
}