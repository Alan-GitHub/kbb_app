import 'package:flutter/material.dart';
import 'package:kbb_app/Home/Main/Views/HomeMainPageTop.dart';
import 'package:kbb_app/Home/Main/Views/HomeMainPageBannerScrollView.dart';

class HomeMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeMainPageTop(),
          HomeMainPageBannerScrollView(),
        ],
      ),
    );
  }
}
