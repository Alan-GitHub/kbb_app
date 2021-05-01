import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kbb_app/Config/ImageNameManager.dart';

class HomeMainPageHotelActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth - 30,
      height: 293,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        children: [title(), hotelActivityEntry()],
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
            '商旅首选酒店',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          Container(
            width: 57,
            height: 20,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Color.fromARGB(26, 196, 150, 66),
                borderRadius: BorderRadius.circular(3)),
            child: Center(
              child: Text(
                '先享后付',
                style: TextStyle(
                    color: Color.fromARGB(255, 184, 133, 51),
                    fontSize: 11,
                    fontWeight: FontWeight.normal),
              ),
            ),
          )
        ],
      ),
    );
  }

  //酒店活动入口
  Widget hotelActivityEntry() {
    double imageWidth = (ScreenUtil().screenWidth - 30 - 30) / 2;
    return Container(
      height: 225,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: imageWidth,
              height: 225,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(
                  Home_img_huazhu,
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            width: imageWidth,
            height: 128,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(
                  Home_img_yaduo,
                  fit: BoxFit.cover,
                )),
          )
        ],
      ),
    );
  }
}
