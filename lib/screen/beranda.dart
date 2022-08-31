import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:moondock/screen/detail_hotel.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
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
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hotel $i',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Lorem Ipsum Dolor Sit Amet,Lorem Ipsum Dolor Sit Amet,Lorem Ipsum Dolor Sit Amet',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
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
            Container(
              margin: EdgeInsets.only(top: 15, left: 8, right: 8),
              height: 200,
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 2,
                children: [
                  Card(
                    child: Text("Losmen"),
                  ),
                  Card(
                    child: Text("Hostel"),
                  ),
                  Card(
                    child: Text("GuestHouse"),
                  ),
                  Card(
                    child: Text("Hotel"),
                  ),
                  Card(
                    child: Text("Budget Hotel"),
                  ),
                  Card(
                    child: Text("Boutique Hotel"),
                  ),
                  Card(
                    child: Text("Apartemen"),
                  ),
                  Card(
                    child: Text("Homestay"),
                  ),
                  Card(
                    child: Text("Resort"),
                  ),
                  Card(
                    child: Text("Villa"),
                  ),
                ],
              ),
            ),
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
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "images/hotel1.jpg",
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
                                    Text("Hotel Ini"),
                                    Icon(Icons.star_border_rounded)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Bandung"),
                                    Text("84 reviews")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "images/hotel1.jpg",
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
                                    Text("Hotel Ini"),
                                    Icon(Icons.star_border_rounded)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Bandung"),
                                    Text("84 reviews")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "images/hotel1.jpg",
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
                                    Text("Hotel Ini"),
                                    Icon(Icons.star_border_rounded)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Bandung"),
                                    Text("84 reviews")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
              child: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter a search term',
                    icon: Icon(Icons.search_rounded)),
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailHotel()));
                  },
                  child: Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
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
                                  'images/hotel2.jpg',
                                  height: 140,
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
                                        'Trans Luxury Hotel',
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
                                      margin: EdgeInsets.only(bottom: 10),
                                      alignment: Alignment.centerRight,
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
                ),
                Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: InkWell(
                      onTap: () {
                        print("hai sayang");
                      },
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
                                  'images/hotel1.jpg',
                                  height: 140,
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
                                        'Trans Luxury Hotel',
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
                                      margin: EdgeInsets.only(bottom: 10),
                                      alignment: Alignment.centerRight,
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
                          )),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
