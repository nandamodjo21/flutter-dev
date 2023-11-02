import 'package:absensi/app/data/module/view/home_blocs.dart';
import 'package:absensi/app/data/module/view/home_event.dart';
import 'package:absensi/app/data/module/view/home_state.dart';
import 'package:absensi/main.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: BlocBuilder<HomeBlocs, HomeState>(
          builder: (context, state){
            return Container(
              margin: EdgeInsets.only(top: 34.h),
              width: 375.w,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView(
                    controller: pageController,
                    onPageChanged: (index){
                      state.page = index;
                      BlocProvider.of<HomeBlocs>(context).add(HomeEvent());
                      print(index);
                    },
                    children: [
                      _page1(
                          1,
                          context,
                          "NEXT",
                          "TRUST",
                          "Takwa is number one",
                          "assets/images/reading.png"
                      ),
                      _page1(
                          2,
                          context,
                          "NEXT",
                          "TRUST",
                          "Respect for everything",
                          "assets/images/boy.png"
                      ),
                      _page1(
                          3,
                          context,
                          "GET STARTED",
                          "TRUST",
                          "Smart Learning",
                          "assets/images/man.png"
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 100.h,
                    child: DotsIndicator(
                      position: state.page,
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                          color: Colors.grey,
                          size: const Size.square(8.0),
                          activeColor: Colors.blue,
                          activeSize: const Size(18.0, 8.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),

      ),
    );
  }

  Widget _page1(int index, BuildContext context, String buttonName, String title, String subTitle, String imagePath){
    return  Column(
      
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(imagePath),
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.normal
            ),
          ),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.only(left: 100.w, right: 100.w),
          child: Text(
            subTitle,
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 14.sp,
                fontWeight: FontWeight.normal
            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            if(index<3){
              pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            }else{
              Navigator.of(context).pushNamedAndRemoveUntil(
                  "login", (route) => false);
              // Navigator.of(context).push(
              //     MaterialPageRoute(
              //         builder: (context)
              //         =>MyHomePage()
              //     )
              // );
            }
          },
            child: Container(
              margin: EdgeInsets.only(top: 100.h,left: 25.w, right: 25.w),
              width: 325.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(15.w)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0,10)
                    )
                  ]
              ),
              child: Center(
                child: Text(buttonName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Raleway'
                  ),
                )
                ,
              ),
            ),
        ),



      ],
    );
  }
}
