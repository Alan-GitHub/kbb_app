import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kbb_app/Config/ImageNameManager.dart';

class HomeMainPageBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil().screenWidth - 30,
        height: 48.5,
        margin: EdgeInsets.only(top: 25),
        child: Image.asset(home_img_bottom),
    );
  }
}
