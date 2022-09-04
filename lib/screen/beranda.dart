import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:moondock/datas/data_service.dart';
import 'package:moondock/models/Hotel.dart';
import 'package:moondock/models/payload/HotelRes.dart';
import 'package:moondock/screen/detail_hotel.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  late HotelRes hotelRes;
  late List<Hotel> hotel = [];

  void loadHotel() async {
    hotelRes = await getHotel();
    setState(() {
      hotel = hotelRes.data ?? <Hotel>[];
    });
    print(hotel.length);
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/profil.jpg'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hello,",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "User!",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 400.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 15),
                    pauseAutoPlayOnTouch: true,
                    autoPlayCurve: Curves.fastOutSlowIn),
                items: hotel.take(5).map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(i.mainPict.toString()),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  i.hotelName.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                  child: Text(
                                    i.desc.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.white),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DetailHotel(
                                                        hotelName: i.hotelName,
                                                        address: i.address,
                                                        category: i.category,
                                                        desc: i.desc,
                                                        gallery: i.gallery,
                                                        mainPict: i.mainPict,
                                                        price: i.price,
                                                        score: i.score,
                                                      )));
                                        },
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          )),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(Icons.info_outline_rounded),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("Lihat Detail")
                                          ],
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ));
                    },
                  );
                }).toList(),
              ),
            ),
            // C
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20, left: 16),
              child: Text(
                "Rekomendasi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: hotel.take(4).map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailHotel(
                                      hotelName: e.hotelName,
                                      address: e.address,
                                      category: e.category,
                                      desc: e.desc,
                                      gallery: e.gallery,
                                      mainPict: e.mainPict,
                                      price: e.price,
                                      score: e.score,
                                    )));
                      },
                      child: Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                e.mainPict.toString(),
                                height: 120,
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        e.hotelName.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          e.address.toString(),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 10, left: 16),
              child: Text(
                "Hotel Populer di Bandung",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              // child: TextField(
              //   decoration: InputDecoration(
              //       border: UnderlineInputBorder(),
              //       hintText: 'Enter a search term',
              //       icon: Icon(Icons.search_rounded)),
              // ),
            ),
            Column(
              children: hotel.map((data) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailHotel(
                                  hotelName: data.hotelName,
                                  address: data.address,
                                  category: data.category,
                                  desc: data.desc,
                                  gallery: data.gallery,
                                  mainPict: data.mainPict,
                                  price: data.price,
                                  score: data.score,
                                )));
                  },
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: 8, bottom: 8, left: 10, right: 10),
                      child: Container(
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.15),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  data.mainPict.toString(),
                                  height: 200,
                                  width: 100,
                                ),
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 21, left: 11, right: 10),
                                      child: Text(
                                        data.hotelName.toString(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 3, left: 11),
                                      child: Text(
                                        'Gatot Subroto, Bandung',
                                        style: TextStyle(color: Colors.black45),
                                      ),
                                    ),
                                    Spacer(flex: 1),
                                    Container(
                                      width: 180,
                                      margin:
                                          EdgeInsets.only(bottom: 10, left: 10),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Rp. 1jt / malam",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 11, bottom: 11),
                                              child: Icon(
                                                Icons.location_on_rounded,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 5, bottom: 11),
                                            child: Text(
                                              '1 km',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 11, bottom: 11),
                                              child: Icon(
                                                Icons.calendar_month_outlined,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 5, bottom: 11),
                                            child: Text(
                                              '4 jan',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 11, bottom: 11),
                                              child: Icon(
                                                Icons.star_border_rounded,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 5, bottom: 11),
                                            child: Text(
                                              '9.3',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ])
                                  ])
                            ],
                          ))),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
