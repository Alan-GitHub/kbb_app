import 'package:flutter/material.dart';

class HomeRouteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 125,
          toolbarHeight: 90,
          flexibleSpace: HomeTopBackWidget()
        ),
        SliverFixedExtentList (
          itemExtent: 600.0,
          delegate: SliverChildBuilderDelegate(
              (context, index) {
                return new Container(
                  color: Colors.green,
                  child: HomeRemainBackWidget()
                );
              },
            childCount: 1
          )
        ),
      ],
    );
  }
}

class HomeTopBackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,

    );
  }
}

class HomeRemainBackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          HomeTakeoutWidget(),
          HomeHotelWidget(),
          HomeOilWidget(),
          HomeAirTicketWidget()
        ],
      ),
    );
  }
}

class HomeTakeoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.yellow,
    );
  }
}

class HomeHotelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
    );
  }
}

class HomeOilWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.red,
    );
  }
}

class HomeAirTicketWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.orange,
    );
  }
}