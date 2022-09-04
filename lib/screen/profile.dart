import 'dart:io';

import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage("images/profil.jpg"),
            ),
            titleText: 'User',
            subTitleText: 'Programmer - Backend',
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Container(
              child: Card(
                elevation: 5,
                child: InkWell(
                    onTap: () {
                      exit(0);
                    },
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(Icons.logout)),
                        Container(
                            alignment: Alignment.center,
                            child: Text("Keluar Aplikasi")),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
