import 'package:flutter/material.dart';

class DetailHotel extends StatelessWidget {
  const DetailHotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset(
              "images/hotel1.jpg",
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Container(
            color: Colors.blue.withOpacity(.5),
            child: Text("Hotel"),
          ),
        ],
      ),
    );
  }
}
