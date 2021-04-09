import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.h,
          color: Colors.pink,
        ),
        Positioned(
          top: 80.h,
          left: 15.w,
          right: 15.w,
          child: _headerAndName(),
        ),
        Positioned(
          top: 150.h,
          left: 15.w,
          right: 15.w,
          child: _moduleEntry(),
        )
      ],
    );
  }

  Widget _headerAndName() {
    return Container(
      height: 100.h,
      color: Colors.green,
    );
  }

  Widget _moduleEntry() {
    return Container(
      height: 200,
      color: Colors.yellow,
    );
  }
}
