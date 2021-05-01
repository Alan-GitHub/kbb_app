import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//轮播组件
class KbbSwiper extends StatelessWidget {
  final List<String> swiperList;
  double width;
  double height;
  double radius;

  KbbSwiper({Key key, this.swiperList, this.width, this.height, this.radius}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(this.radius),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network("${swiperList[index]}", fit: BoxFit.cover,);
          },
          itemCount: swiperList.length,
          pagination: SwiperPagination(),
          autoplay: true,
        ),
      ),
    );
  }
}