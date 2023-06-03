
import 'package:flutter/material.dart';

import 'widget/drawer_item.dart';
import 'widget/status_row.dart';
import 'widget/tab_section.dart';
import 'widget/user_avatar.dart';
import 'widget/widget_fun/list_tile_conversion.dart';
import 'widget/widget_fun/status_circularavatar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0xFF171717),
      body: Stack(
        children: [
          TabSection(globalKey: _globalKey),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
              height: 220,
              decoration: const BoxDecoration(
                  color: Color(0xFF27c1a9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  const StatusRowBefor(),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildContactAvatar('Alla', 'img1.jpeg'),
                        buildContactAvatar('July', 'img2.jpeg'),
                        buildContactAvatar('Mikle', 'img3.jpeg'),
                        buildContactAvatar('Kler', 'img4.jpg'),
                        buildContactAvatar('Moane', 'img5.jpeg'),
                        buildContactAvatar('Julie', 'img6.jpeg'),
                        buildContactAvatar('Allen', 'img7.jpeg'),
                        buildContactAvatar('John', 'img8.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Color(0xFFEFFFFC),
                ),
                child: ListView(
                  padding: const EdgeInsets.only(left: 25),
                  children: [
                    buildConversationRow(
                        'Laura', 'Hello, how are you', 'img1.jpeg', 0),
                    buildConversationRow(
                        'Kalya', 'Will you visit me', 'img2.jpeg', 2),
                    buildConversationRow(
                        'Mary', 'I ate your ...', 'img3.jpeg', 6),
                    buildConversationRow(
                        'Hellen', 'Are you with Kayla again', 'img5.jpeg', 0),
                    buildConversationRow(
                        'Louren', 'Barrow money please', 'img6.jpeg', 3),
                    buildConversationRow('Tom', 'Hey, whatsup', 'img7.jpeg', 0),
                    buildConversationRow(
                        'Laura', 'Helle, how are you', 'img1.jpeg', 0),
                    buildConversationRow(
                        'Laura', 'Helle, how are you', 'img1.jpeg', 0),
                  ],
                ),
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF27c1a9),
          child: const Icon(
            Icons.edit_outlined,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
      drawer: Drawer(
        width: 275,
        elevation: 30,
        backgroundColor: const Color(0xF3393838),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40))),
        child: Container(
          decoration: const BoxDecoration(
              
              borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                    color: Color(0x3D000000), spreadRadius: 30, blurRadius: 20)
              ]),
          child:  const Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 56,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        UserAvatar(filename: 'img3.jpeg'),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Tom Brenan',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    DrawerItem(
                      title: 'Account',
                      icon: Icons.key,
                    ),
                    DrawerItem(title: 'Chats', icon: Icons.chat_bubble),
                    DrawerItem(
                        title: 'Notifications', icon: Icons.notifications),
                    DrawerItem(
                        title: 'Data and Storage', icon: Icons.storage),
                    DrawerItem(title: 'Help', icon: Icons.help),
                    Divider(
                      height: 35,
                      color: Colors.green,
                    ),
                    DrawerItem(
                        title: 'Invite a friend', icon: Icons.people_outline),
                  ],
                ),
                DrawerItem(title: 'Log out', icon: Icons.logout)
              ],
            ),
          ),
        ),
      ),
    );
  }

  

  
}