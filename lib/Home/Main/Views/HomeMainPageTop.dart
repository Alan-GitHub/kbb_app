import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeMainPageTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 325.h,
        color: Colors.grey,
        child: Stack(
          children: [
            // Container
            Image.asset('images/bg_home.png'),
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
      children: [
        header(),
        moduleEntry(context)
      ],
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
      height: 205.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(6.0))
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [oneLevelEntry('酒店'), oneLevelEntry('机票')],
          ),
          Row(
            children: [
              twoLevelEntry('订餐'),
              twoLevelEntry('打车'),
              twoLevelEntry('火车票'),
              twoLevelEntry('加油')
            ],
          )
        ],
      ),
    );
  }

  //酒店、机票入口
  Widget oneLevelEntry(String text) {
    return Container(
      color: Colors.blueGrey,
      child: Stack(
        children: [
          Container(
            color: Colors.red,
            // width: 100.w,
            height: 70.h,
          ),
          Positioned(
            child: Column(
              children: [
                Text('图片'),
                Text(text)
              ],
            ),
          )
        ],
      ),
    );
  }

  //订餐、打车、火车票、加油入口
  Widget twoLevelEntry(String text) {
    return Container(
      child: Column(
        children: [
          Text('图片'),
          Text(text)
        ],
      ),
    );
  }
}
