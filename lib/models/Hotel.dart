import 'dart:convert';

class Hotel {
  String? hotelName;
  String? mainPict;
  String? desc;
  String? category;
  String? address;
  double? price;
  double? score;
  List<String>? gallery;

  Hotel({
    this.hotelName,
    this.mainPict,
    this.desc,
    this.category,
    this.address,
    this.price,
    this.score,
    this.gallery,
  });

  Map<String, dynamic> toMap() {
    return {
      'hotelName': hotelName,
      'mainPict': mainPict,
      'desc': desc,
      'category': category,
      'address': address,
      'price': price,
      'score': score,
      'gallery': gallery,
    };
  }

  factory Hotel.fromMap(Map<String, dynamic> map) {
    return Hotel(
      hotelName: map['hotelName'],
      mainPict: map['mainPict'],
      desc: map['desc'],
      category: map['category'],
      address: map['address'],
      price: map['price']?.toDouble(),
      score: map['score']?.toDouble(),
      gallery: List<String>.from(map['gallery']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Hotel.fromJson(String source) => Hotel.fromMap(json.decode(source));
}
