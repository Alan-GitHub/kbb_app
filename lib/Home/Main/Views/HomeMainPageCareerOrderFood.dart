import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeMainPageCareerOrderFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth - 30,
      height: 223,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        children: [
          title(),
          orderFood(),
        ],
      ),
    );
  }

  //标题
  Widget title() {
    return Container(
      height: 53,
      margin: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Text(
            '职场订餐',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  //订餐入口
  Widget orderFood() {
    return Container(
      width: ScreenUtil().screenWidth - 30 - 20,
      height: 155,

      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 247, 242),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 10,
            child: Text('老板买单', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
          ),

        ],
      ),
    );
  }
}
