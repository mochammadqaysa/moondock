import 'package:flutter/material.dart';
import 'package:moondock/datas/data_service.dart';
import 'package:moondock/models/Hotel.dart';
import 'package:moondock/models/payload/HotelRes.dart';
import 'package:moondock/screen/search_condition.dart';

class FindHotel extends StatefulWidget {
  const FindHotel({Key? key}) : super(key: key);

  @override
  State<FindHotel> createState() => _FindHotelState();
}

class _FindHotelState extends State<FindHotel> {
  late HotelRes hotelRes;
  late List<Hotel> hotel;

  void loadHotel() async {
    hotelRes = await getHotel();
    hotel = hotelRes.data ?? <Hotel>[];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHotel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TextFormField(
            readOnly: true,
            onTap: () {
              showSearch(
                  context: context, delegate: SearchCondition(hotel, context));
            },
          )
        ],
      ),
    );
  }
}
