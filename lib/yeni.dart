import 'package:flutter/material.dart';
import 'package:menu/screen.dart/tasks.dart';

import 'Dashboard.dart';
import 'screen.dart/comminication.dart';
import 'screen.dart/files.dart';

class YeniSayfa extends StatefulWidget {
  const YeniSayfa({super.key});

  @override
  State<YeniSayfa> createState() => _YeniSayfaState();
}

class _YeniSayfaState extends State<YeniSayfa> {
  int PageScreenIndex = 0;
  List<Widget> PageScreen = const [
    DashBoardPage(),
    TasksPage(),
    FilesPage(),
    Comminication(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            //dashboard yazıları ve cardlar
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Dashboard / Projects ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      const Text(
                        "/ Adventure 1290 Dashboard",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 700,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Adventure 1290 Dashboard",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Updated 1 day ago",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(height: 20),
                  //2.menü tıklamaları

                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            PageScreenIndex = 0;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "Dashboard",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 191, 187, 187)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            PageScreenIndex = 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "Tasks",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 191, 187, 187)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            PageScreenIndex = 2;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "Comminication",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 191, 187, 187)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            PageScreenIndex = 3;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "Files",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 191, 187, 187)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: const [
                      Text(
                        "Contributors",
                        style: TextStyle(
                            color: Color.fromARGB(255, 184, 181, 181),
                            fontSize: 10),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 10,
                        backgroundColor: Color.fromARGB(255, 145, 169, 187),
                      ),
                      const CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.orange,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      //1. buton
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 215, 211, 211)),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.folder_outlined,
                              size: 24.0,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '9 Files',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      //2.buton
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 215, 211, 211)),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.file_copy_outlined,
                              size: 24.0,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '2 invoices',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 400),
                      //3.buton
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 215, 211, 211)),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.filter_center_focus,
                              color: Colors.grey,
                              size: 24.0,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Filter',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 60),
                      //4.buton
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 114, 31, 170)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.wrap_text,
                          size: 24.0,
                          color: Color.fromARGB(255, 255, 254, 255),
                        ),
                      ),
                      //5.button
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 255, 255, 255)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.filter_center_focus,
                          size: 24.0,
                          color: Color.fromARGB(255, 214, 214, 214),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(width: 250),
            //slider card yeri
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    //1.icon
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: const Icon(
                        Icons.question_mark,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ),
                    //2.icon
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: const Icon(
                        Icons.heart_broken,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ),
                    //3.icon
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: const Icon(
                        Icons.more_vert_outlined,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Project Drive",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 55),
                    Text(
                      "<  >",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
                //card slider
                Row(
                  children: [
                    Container(
                      height: 130,
                      width: 185,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 70,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.network(
                                  "https://assets-global.website-files.com/5d3e265ac89f6a3e64292efc/6192a638cb70a3727690a726_preview-canvas.jpg"),
                            ),
                          ),
                          //const SizedBox(height: 10),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.add_photo_alternate_outlined,
                                  size: 15,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(1.0),
                                child: Text(
                                  "Input Fields Master",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Edit Today",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        //öbür sayfalar
        Container(
          padding: const EdgeInsets.all(20),
          height: 430,
          width: 1430,
          alignment: Alignment.topLeft,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: PageScreen[PageScreenIndex],
          ),
        ),
      ],
    );
  }
}
