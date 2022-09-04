import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:moondock/models/Hotel.dart';
import 'package:moondock/screen/detail_hotel.dart';

Widget rowHotelCheckable(int pos, Hotel hotel, BuildContext context) {
  return Card(
    child: InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailHotel(
                      hotelName: hotel.hotelName,
                      address: hotel.address,
                      category: hotel.category,
                      desc: hotel.desc,
                      gallery: hotel.gallery,
                      mainPict: hotel.mainPict,
                      price: hotel.price,
                      score: hotel.score,
                    )));
      },
      child: GFListTile(
          margin: EdgeInsets.all(0),
          avatar: GFAvatar(
            backgroundImage: AssetImage(hotel.mainPict.toString()),
            size: GFSize.LARGE,
            shape: GFAvatarShape.standard,
          ),
          titleText: hotel.hotelName,
          subTitleText: hotel.address,
          icon: Icon(Icons.favorite)),
    ),
  );
}
