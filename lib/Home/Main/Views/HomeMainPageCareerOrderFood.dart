import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kbb_app/Config/ImageNameManager.dart';

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
          Container(
            margin: EdgeInsets.only(left: 10),
            // color: Colors.greenAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  '老板买单',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                orderFoodSlogan(),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '1.1W+',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 74, 13),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '位老板和员工已参加',
                      style: TextStyle(
                          color: Color.fromARGB(255, 102, 102, 102),
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                    width: 130,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 237, 90, 45),
                          Color.fromARGB(255, 244, 165, 60)
                        ])),
                    child: Center(
                      child: Text(
                        '我要发起',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ))
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 0,
            child: Image.asset(Home_img_love, width: 60, height: 123,),
          ),
        ],
      ),
    );
  }

  //订餐宣传语
  Widget orderFoodSlogan() {
    return Container(
      child: Row(
        children: [
          Container(
            width: 60,
            height: 20,
            decoration: BoxDecoration(
                color: Color.fromARGB(26, 255, 97, 8),
                borderRadius: BorderRadius.circular(2.0)),
            child: Center(
              child: Text(
                '团建聚餐',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 97, 8),
                    fontSize: 11,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 60,
            height: 20,
            decoration: BoxDecoration(
                color: Color.fromARGB(26, 31, 191, 150),
                borderRadius: BorderRadius.circular(2.0)),
            child: Center(
              child: Text('先享后付',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 204, 150),
                      fontSize: 11,
                      fontWeight: FontWeight.normal)),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 60,
            height: 20,
            decoration: BoxDecoration(
                color: Color.fromARGB(26, 196, 150, 66),
                borderRadius: BorderRadius.circular(2.0)),
            child: Center(
              child: Text('每单开票',
                  style: TextStyle(
                      color: Color.fromARGB(255, 184, 133, 51),
                      fontSize: 11,
                      fontWeight: FontWeight.normal)),
            ),
          ),
        ],
      ),
    );
  }
}
