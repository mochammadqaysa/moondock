import 'dart:convert';

import 'package:moondock/models/Hotel.dart';

class HotelRes {
  String? rm;
  List<Hotel>? data;

  HotelRes({
    this.rm,
    this.data,
  });

  Map<String, dynamic> toMap() {
    return {
      'rm': rm,
      'data': data?.map((x) => x.toMap()).toList(),
    };
  }

  factory HotelRes.fromMap(Map<String, dynamic> map) {
    return HotelRes(
      rm: map['rm'],
      data: map['data'] != null
          ? List<Hotel>.from(map['data']?.map((x) => Hotel.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HotelRes.fromJson(String source) =>
      HotelRes.fromMap(json.decode(source));
}
