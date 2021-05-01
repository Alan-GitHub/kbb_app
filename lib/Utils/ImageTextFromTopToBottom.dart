import 'package:flutter/material.dart';

//图片文字组件
class ImageTextFromTopToBottom extends StatelessWidget {
  String imageUrl;
  String text;
  double widgetW;
  double widgetH;
  double imageW;
  double imageH;
  double fontSize;
  FontWeight fontWeight;

  ImageTextFromTopToBottom(this.imageUrl, this.text, this.widgetW, this.widgetH,
      this.imageW, this.imageH, this.fontSize, this.fontWeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widgetW,
      height: widgetH,
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            width: imageW,
            height: imageH,
          ),
          Text(text,
              style: TextStyle(fontSize: fontSize, fontWeight: fontWeight))
        ],
      ),
    );
  }
}