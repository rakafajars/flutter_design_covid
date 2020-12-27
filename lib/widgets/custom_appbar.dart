import 'package:design_covid/core/flutter_icons.dart';
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            FlutterIcons.menu,
          ),
          onPressed: () {},
        ),
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.all(
            16.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                100,
              ),
            ),
            image: DecorationImage(
              image: AssetImage(
                "assets/images/profile.jpg",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
