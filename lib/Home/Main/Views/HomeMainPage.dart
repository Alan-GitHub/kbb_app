import 'package:flutter/material.dart';
import 'package:kbb_app/Home/Main/Views/HomeMainPageTop.dart';
import 'package:kbb_app/Home/Main/Views/HomeMainPageBannerScrollView.dart';
import 'package:kbb_app/Home/Main/Views/HomeMainPageHotelActivity.dart';
import 'package:kbb_app/Home/Main/Views/HomeMainPageCareerOrderFood.dart';
import 'package:kbb_app/Home/Main/Views/HomeMainPageBottom.dart';

class HomeMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeMainPageTop(),
          HomeMainPageBannerScrollView(),
          HomeMainPageHotelActivity(),
          HomeMainPageCareerOrderFood(),
          HomeMainPageBottom()
        ],
      ),
    );
  }
}
