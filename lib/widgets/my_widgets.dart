import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:moondock/models/Hotel.dart';

Widget rowHotelCheckable(int pos, Hotel hotel, BuildContext context) {
  return Card(
    child: GFListTile(
        margin: EdgeInsets.all(0),
        avatar: GFAvatar(
          backgroundImage: AssetImage("images/hotel1.jpg"),
          size: GFSize.LARGE,
          shape: GFAvatarShape.standard,
        ),
        titleText: hotel.hotelName,
        subTitleText: hotel.address,
        icon: Icon(Icons.favorite)),
  );
}
