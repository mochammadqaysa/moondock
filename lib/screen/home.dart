import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                  Padding(
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
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 3, left: 11),
                                      child: Text(
                                        'segini',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Spacer(flex: 1),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 11, bottom: 11),
                                              child: Icon(
                                                Icons.book_outlined,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 5, bottom: 11),
                                            child: Text(
                                              'luxury',
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
                  Padding(
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
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 3, left: 11),
                                      child: Text(
                                        'segini',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Spacer(flex: 1),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 11, bottom: 11),
                                              child: Icon(
                                                Icons.book_outlined,
                                                size: 13,
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 5, bottom: 11),
                                            child: Text(
                                              'luxury',
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      margin: EdgeInsets.only(bottom: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: InkWell(
                        customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          bottomLeft: Radius.circular(16)),
                                      child: Image.asset(
                                        "images/hotel2.jpg",
                                        height: 150,
                                        width: 150,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          ListTile(
                                            title: Text(
                                              "Trans Luxury Hotel",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle:
                                                Text("Gatot Subroto, Bandung"),
                                          ),
                                          ListTile(
                                            title: Row(
                                              children: [
                                                Icon(
                                                    Icons.location_on_outlined),
                                                Text("Hotel ituu"),
                                              ],
                                            ),
                                            subtitle: Row(
                                              children: [
                                                Icon(Icons.star),
                                                Icon(Icons.star),
                                                Icon(Icons.star),
                                                Icon(Icons.star),
                                                Icon(Icons.star),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        onTap: () {},
                        splashColor: Colors.black.withOpacity(.2),
                        highlightColor: Colors.blue.withOpacity(.3),
                      ),
                      elevation: 2,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
