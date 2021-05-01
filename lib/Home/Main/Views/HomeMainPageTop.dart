import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:kbb_app/Config/ImageNameManager.dart';
import 'package:kbb_app/Utils/ImageTextFromTopToBottom.dart';

class HomeMainPageTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 325.h,
        child: Stack(
          children: [
            // Container
            Image.asset(Home_Top_Background),
            Positioned(
              top: 65.h,
              left: 15.w,
              child: compose(context),
            ),
          ],
        ));
  }

  //组合头部和模块进入点
  Widget compose(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [header(), moduleEntry(context)],
    );
  }

  //头部
  Widget header() {
    return Row(
      children: [
        Container(
          color: Colors.white,
          width: 40.w,
          height: 40.h,
          margin: EdgeInsets.only(left: 10, right: 10),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('Hi~ 下午好'), Text('一键开通会员， 享10项特权 >')],
        )
      ],
    );
  }

  //模块进入点
  Widget moduleEntry(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      width: MediaQuery.of(context).size.width - 30,
      height: 210.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6.0))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              oneLevelEntry(Home_Icon_Hotel, '酒店'),
              oneLevelEntry(Home_Icon_Plane, '机票')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              twoLevelEntry(Home_Icon_Takeout, '订餐'),
              twoLevelEntry(Home_Icon_Taxi, '打车'),
              twoLevelEntry(Home_Icon_Train, '火车票'),
              twoLevelEntry(Home_Icon_Oil, '加油')
            ],
          )
        ],
      ),
    );
  }

  //酒店、机票入口
  Widget oneLevelEntry(String imageUrl, String text) {
    return Container(
      width: (ScreenUtil().screenWidth - 30 - 30) / 2,
      height: 85,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Colors.greenAccent.withAlpha(50),
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Center(
        child: ImageTextFromTopToBottom(
            imageUrl, text, 32, 55, 32, 32, 15.0, FontWeight.normal),
      ),
    );
  }

  //订餐、打车、火车票、加油入口
  Widget twoLevelEntry(String imageUrl, String text) {
    return Container(
        width: (ScreenUtil().screenWidth - 30) / 4,
        height: 100,
        child: Center(
          child: ImageTextFromTopToBottom(
              imageUrl, text, 40, 50, 30, 30, 13.0, FontWeight.normal),
        ));
  }
}
