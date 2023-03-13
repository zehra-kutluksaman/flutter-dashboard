import 'package:flutter/material.dart';
import 'package:menu/screen.dart/Calander.dart';

import 'package:menu/screen.dart/Drive.dart';
import 'package:menu/screen.dart/Invoices.dart';
import 'package:menu/screen.dart/Projects.dart';
import 'package:menu/screen.dart/To-Do.dart';

import 'package:menu/yeni.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  List<String> screenImage = [
    "https://st1.myideasoft.com/shop/ar/09/myassets/blogs/tavsan.jpg?revision=1543016480"
  ];
  List<Widget> projectsScreen = const [
    YeniSayfa(),
    Projects(),
    Invoices(),
    Calendar(),
    ToDo(),
    Drive(),
  ];

  int projectsIndex = 0;
  List<Widget> person = [
    const YeniSayfa(),
  ];
  //int screenIndex = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 9, 39, 10),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 215, 247, 217),
        leading: const Icon(
          Icons.hexagon,
          color: Color.fromARGB(255, 2, 36, 63),
          size: 30,
        ),
        actions: [
          //büyük menü
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 30,
              ),
              //1.tıklama
              InkWell(
                onTap: () {
                  setState(() {
                    projectsIndex = 0;
                  });
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.menu_open_sharp,
                      color: Color.fromARGB(255, 121, 185, 121),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Dasboard",
                        style: TextStyle(
                          color: Color.fromARGB(255, 121, 185, 121),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              //2.tıklama
              InkWell(
                onTap: () {
                  setState(() {
                    projectsIndex = 1;
                  });
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.filter_none_rounded,
                      color: Color.fromARGB(255, 121, 185, 121),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Projects",
                        style: TextStyle(
                          color: Color.fromARGB(255, 121, 185, 121),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              //3.tıklama
              InkWell(
                onTap: () {
                  setState(() {
                    projectsIndex = 2;
                  });
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.file_open_sharp,
                      color: Color.fromARGB(255, 121, 185, 121),
                    ),
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Invoices",
                          style: TextStyle(
                            color: Color.fromARGB(255, 121, 185, 121),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              //4.tıklama
              InkWell(
                onTap: () {
                  setState(() {
                    projectsIndex = 3;
                  });
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.calendar_month,
                      color: Color.fromARGB(255, 121, 185, 121),
                    ),
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Calendar",
                          style: TextStyle(
                            color: Color.fromARGB(255, 121, 185, 121),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              //5.tıklama
              InkWell(
                onTap: () {
                  setState(() {
                    projectsIndex = 4;
                  });
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.topic_outlined,
                      color: Color.fromARGB(255, 121, 185, 121),
                    ),
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "ToDo",
                          style: TextStyle(
                            color: Color.fromARGB(255, 121, 185, 121),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              //6.tıklama
              InkWell(
                onTap: () {
                  setState(() {
                    projectsIndex = 5;
                  });
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.drive_eta,
                      color: Color.fromARGB(255, 121, 185, 121),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Drive",
                        style: TextStyle(
                          color: Color.fromARGB(255, 121, 185, 121),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 520),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Color.fromARGB(255, 215, 247, 217),
                ),
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 190, 184, 184),
                      size: 10,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                          color: Color.fromARGB(255, 190, 184, 184),
                          fontSize: 10),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              const Icon(
                Icons.dialpad_outlined,
                color: Color.fromARGB(255, 121, 185, 121),
              ),
              const SizedBox(
                width: 40,
              ),
              const Icon(
                Icons.mail,
                color: Color.fromARGB(255, 121, 185, 121),
              ),
              const SizedBox(
                width: 30,
              ),
              const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 175, 60, 10),
                radius: 25,
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 23,
                  backgroundImage: NetworkImage(
                      "https://st1.myideasoft.com/shop/ar/09/myassets/blogs/tavsan.jpg?revision=1543016480"),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Row(
              children: <Widget>[
                NavigationRail(
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (int index) {
                    setState(() {
                      projectsIndex = index;
                    });
                  },
                  labelType: NavigationRailLabelType.selected,
                  backgroundColor: Colors.white,
                  destinations: const <NavigationRailDestination>[
                    // navigation destinations
                    NavigationRailDestination(
                      icon: Icon(Icons.dehaze_outlined),
                      selectedIcon: Icon(Icons.dehaze_outlined),
                      label: Text(''),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.hdr_auto_rounded),
                      selectedIcon: Icon(Icons.hdr_auto_rounded),
                      label: Text(''),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.hdr_auto_rounded),
                      selectedIcon: Icon(Icons.hdr_auto_rounded),
                      label: Text(''),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.plus_one),
                      selectedIcon: Icon(Icons.plus_one),
                      label: Text(''),
                    ),

                    NavigationRailDestination(
                      icon: Icon(Icons.settings),
                      selectedIcon: Icon(Icons.settings),
                      label: Text(''),
                    ),
                  ],
                  selectedIconTheme: const IconThemeData(color: Colors.orange),
                  unselectedIconTheme: const IconThemeData(color: Colors.black),
                  selectedLabelTextStyle: const TextStyle(color: Colors.orange),
                ),
                const VerticalDivider(thickness: 1, width: 2),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: projectsScreen[projectsIndex],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
