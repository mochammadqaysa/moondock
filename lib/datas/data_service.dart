import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:moondock/models/Hotel.dart';
import 'package:moondock/models/payload/HotelRes.dart';

Future<HotelRes> getHotel() async {
  print("---------- GET HOTEL ----------");
  final response = await rootBundle.loadString('data/list_hotel.json');
  debugPrint(response);
  return HotelRes.fromJson(response);
}
