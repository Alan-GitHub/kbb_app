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
    );
  }
}
