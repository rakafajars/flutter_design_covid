import 'package:design_covid/core/const.dart';
import 'package:design_covid/core/flutter_icons.dart';
import 'package:design_covid/widgets/chart_widget.dart';
import 'package:design_covid/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class StatisticPage extends StatefulWidget {
  @override
  _StatisticPageState createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: width,
                height: 275,
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      25,
                    ),
                    bottomRight: Radius.circular(
                      25,
                    ),
                  ),
                ),
                padding: EdgeInsets.only(
                  top: 25,
                ),
                child: Image.asset("assets/images/virus2.png"),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomAppBarWidget(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Text(
                        "STATISTICS",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    _buildStatistics(),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: _buildGender(
                              icon: FlutterIcons.male,
                              color: Colors.orangeAccent,
                              title: "MALE",
                              value: "59,5%",
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: _buildGender(
                              icon: FlutterIcons.female,
                              color: Colors.pink,
                              title: "FEMALE",
                              value: "40,5%",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: 'Global Case of ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.black87,
                          ),
                          children: [
                            TextSpan(
                              text: "COVID 19",
                              style: TextStyle(
                                color: AppColors.mainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        height: 170,
                        child: Center(
                          child: Image.asset(
                            "assets/images/map.png",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGender({
    @required IconData icon,
    @required Color color,
    @required String title,
    @required String value,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            15,
          ),
        ),
        border: Border.all(
          color: Colors.white,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(
              1,
              1,
            ),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      padding: EdgeInsets.all(
        16.0,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                icon,
                size: 60,
                color: color,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Confirmed\nCase",
                      style: TextStyle(
                        color: Colors.black38,
                        height: 1.5,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.orangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatistics() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            15,
          ),
        ),
        border: Border.all(
          color: Colors.white,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(
              1,
              1,
            ),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: EdgeInsets.all(
        24,
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 130,
              height: 130,
              child: DonutPieChart.withSampleData(),
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildStatisticsItem(
                  color: Colors.blueAccent,
                  title: "Confirmed",
                  value: "23,290,539",
                ),
                _buildStatisticsItem(
                  color: Colors.yellowAccent,
                  title: "Recovered",
                  value: "5,290,539",
                ),
                _buildStatisticsItem(
                  color: Colors.redAccent,
                  title: "Death",
                  value: "2,290,539",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticsItem({
    @required Color color,
    @required String title,
    @required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(FlutterIcons.label, size: 50, color: color),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
            Text(value),
          ],
        ),
      ],
    );
  }
}
