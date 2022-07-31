import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailHotel extends StatelessWidget {
  const DetailHotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    child: Image.network(imgList[1],),
                    ),
                ),
                Positioned(
                  top: 240,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                    ),
                    height: 700,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Trans Luxury Hotel", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                                Text("\$ 20 ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on, color: Colors.black45 ,size: 15,),
                              SizedBox(width: 4,),
                              Text("Kota Bandung", style: TextStyle(color: Colors.black45),)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star_outlined, color: Colors.amber, size: 18,),
                              Icon(Icons.star_outlined, color: Colors.amber, size: 18,),
                              Icon(Icons.star_outlined, color: Colors.amber, size: 18,),
                              Icon(Icons.star_outlined, color: Colors.amber, size: 18,),
                              Icon(Icons.star_half_outlined, color: Colors.amber, size: 18,),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                alignment: Alignment.bottomCenter,
                                child: Text("4.5", style: TextStyle(fontSize: 11, color: Colors.black54),),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                alignment: Alignment.center,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueAccent.withOpacity(0.3)
                                ),
                                child: Text("Hotel", style: TextStyle(color: Colors.blue),),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueAccent.withOpacity(0.3)
                                ),
                                child: Text("Recomended", style: TextStyle(color: Colors.blue),),
                              ),

                              
                            ],
                          ),
                          DefaultTabController(
                            length: 3,
                            initialIndex: 0,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                              Container(
                                child: TabBar(
                                  labelColor: Colors.green,
                                  unselectedLabelColor: Colors.black,
                                  labelPadding: EdgeInsets.all(10),
                                  tabs: [
                                    Tab(text: 'Deskripsi'),
                                    Tab(text: 'Ruangan'),
                                    Tab(text: 'Reviews'),
                                  ],
                                ),
                              ),
                              Container(
                                height: 400, //height of TabBarView
                                decoration: BoxDecoration(
                                  border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                                ),
                                child: TabBarView(children: <Widget>[
                                  Container(
                                    child: Center(
                                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ornare placerat odio sit amet accumsan. Mauris gravida odio quis quam varius, nec vestibulum lacus viverra. Nunc lacus enim, ullamcorper quis arcu in, molestie facilisis felis. Aliquam tempor massa lorem, vitae posuere lorem bibendum sit amet. Aenean in ligula ac mi hendrerit ultrices. Aenean sed dignissim augue. Etiam non urna ut nisl aliquet venenatis et quis justo. Integer egestas, massa sed tincidunt tempus, odio lorem commodo sem, eu consequat felis mi ut diam. Duis euismod tincidunt suscipit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam luctus, felis quis lacinia accumsan, mauris ex mollis turpis, vel consequat orci enim suscipit purus.', style: TextStyle(fontSize: 16,)),
                                    ),
                                  ),
                                  Container(
                                    child: CarouselSlider(
                                      options: CarouselOptions(height: 400.0),
                                      items: [1,2,3,4,5].map((i) {
                                        return Builder(
                                          builder: (BuildContext context) {
                                            return Container(
                                              width: MediaQuery.of(context).size.width,
                                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                                              decoration: BoxDecoration(
                                                color: Colors.amber
                                              ),
                                              child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                                            );
                                          },
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text('Qaysa Si Paling', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ])
                              )
                            ])
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        )
                                      )
                                  ),
                                onPressed: (){},
                                child: Icon(Icons.favorite)
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 263,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        )
                                      )
                                  ),
                                  onPressed: (){},
                                  child: Text("Book Now (\$ 20)")
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ),
                
              ],
            ),
          ),
        ),
      ),
    );

    
  }

  Widget label() {
      return Container(
        height: 25,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(30)),
        child: Text("Hotel"),
      );
    }
}
