import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kbb_app/Utils/KbbSwiper.dart';

class HomeMainPageBannerScrollView extends StatelessWidget {
  List<String> bannerList = [
    'https://kbb-dev-1300120292.cos.ap-shanghai.myqcloud.com/admincp/images/08845ae0b0598069a595cddb84ffc47d.gif',
    'https://kbb-dev-1300120292.cos.ap-shanghai.myqcloud.com/admincp/images/08845ae0b0598069a595cddb84ffc47d.gif'
  ];

  @override
  Widget build(BuildContext context) {
    double width = ScreenUtil().screenWidth - 30;
    return Container(
      width: width,
      height: 75,
      margin: EdgeInsets.only(top: 10),
      child: KbbSwiper(swiperList: bannerList, width: width, height: 75, radius: 5.0,),
    );
  }
}

