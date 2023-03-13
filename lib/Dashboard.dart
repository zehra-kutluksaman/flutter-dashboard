import 'package:flutter/material.dart';
import 'package:menu/todo_card.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //1.sütun
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 239, 237, 237),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //1.sütun başlık
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "To Do ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 10,
                        backgroundColor: Color.fromARGB(255, 209, 206, 206),
                        child: Text(
                          "3",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 130),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //1.satır
                  const ToDoCard(
                    cardTitle: "Input Fields",
                    butonColor: Color.fromARGB(255, 255, 213, 147),
                    butonText: "Design System",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "2/8",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "07/07/2022",
                    textColor: Color.fromARGB(255, 174, 107, 82),
                  ),
                  const SizedBox(height: 10),
                  //2.satır
                  const ToDoCard(
                    cardTitle: "Buttons",
                    butonColor: Color.fromARGB(255, 255, 213, 147),
                    butonText: "Design System",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "1/4",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "20/07/2022",
                    textColor: Color.fromARGB(255, 174, 107, 82),
                  ),

                  const SizedBox(height: 10),
                  //3.satır
                  const ToDoCard(
                    cardTitle: "Landing Page Design",
                    butonColor: Color.fromARGB(255, 120, 191, 214),
                    butonText: "Desktop",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "4/5",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "31/08/2022",
                    textColor: Color.fromARGB(255, 34, 61, 158),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 20,
                    width: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.plus_one,
                          size: 15,
                          color: Color.fromARGB(255, 152, 150, 150),
                        ),
                        Text(
                          "Add Card",
                          style: TextStyle(
                              color: Color.fromARGB(255, 152, 150, 150)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          //2.sütun
          SingleChildScrollView(
            child: Container(
              height: 400,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 239, 237, 237),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //1.sütun başlık
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "In progress ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 10,
                        backgroundColor: Color.fromARGB(255, 209, 206, 206),
                        child: Text(
                          "2",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 130),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //1.satır
                  const ToDoCard(
                    cardTitle: "Branding",
                    butonColor: Color.fromARGB(255, 255, 213, 147),
                    butonText: "Design System",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "2/8",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "07/07/2022",
                    textColor: Color.fromARGB(255, 174, 107, 82),
                  ),
                  const SizedBox(height: 10),
                  //2.satır
                  const ToDoCard(
                    cardTitle: "Buttons",
                    butonColor: Color.fromARGB(255, 255, 213, 147),
                    butonText: "Design System",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "1/4",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "20/07/2022",
                    textColor: Color.fromARGB(255, 174, 107, 82),
                  ),

                  const SizedBox(height: 10),
                  //2.satır

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 20,
                    width: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.plus_one,
                          size: 15,
                          color: Color.fromARGB(255, 152, 150, 150),
                        ),
                        Text(
                          "Add Card",
                          style: TextStyle(
                              color: Color.fromARGB(255, 152, 150, 150)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          //3.sütun
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 239, 237, 237),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //1.sütun başlık
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Done ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 10,
                        backgroundColor: Color.fromARGB(255, 209, 206, 206),
                        child: Text(
                          "3",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 130),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //1.satır
                  const ToDoCard(
                    cardTitle: "Logotype Design ",
                    butonColor: Color.fromARGB(255, 120, 191, 214),
                    butonText: "Branding ",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "Completed",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "07/07/2022",
                    textColor: Color.fromARGB(255, 34, 61, 158),
                  ),
                  const SizedBox(height: 10),
                  //2.satır
                  const ToDoCard(
                    cardTitle: "Buttons",
                    butonColor: Color.fromARGB(255, 255, 213, 147),
                    butonText: "Design System",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "1/4",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "20/07/2022",
                    textColor: Color.fromARGB(255, 174, 107, 82),
                  ),

                  const SizedBox(height: 10),
                  //3.satır
                  const ToDoCard(
                    cardTitle: "Basic Compenent Setup",
                    butonColor: Color.fromARGB(255, 255, 213, 147),
                    butonText: "Design System",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "Completed",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "31/08/2022",
                    textColor: Color.fromARGB(255, 174, 107, 82),
                  ),

                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 20,
                    width: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.plus_one,
                          size: 15,
                          color: Color.fromARGB(255, 152, 150, 150),
                        ),
                        Text(
                          "Add Card",
                          style: TextStyle(
                              color: Color.fromARGB(255, 152, 150, 150)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          //4.sütun
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 239, 237, 237),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //1.sütun başlık
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Done ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 10,
                        backgroundColor: Color.fromARGB(255, 209, 206, 206),
                        child: Text(
                          "3",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 130),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //1.satır
                  const ToDoCard(
                    cardTitle: "Logotype Design ",
                    butonColor: Color.fromARGB(255, 120, 191, 214),
                    butonText: "Branding ",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "Completed",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "07/07/2022",
                    textColor: Color.fromARGB(255, 34, 61, 158),
                  ),
                  const SizedBox(height: 10),
                  //2.satır
                  const ToDoCard(
                    cardTitle: "Buttons",
                    butonColor: Color.fromARGB(255, 255, 213, 147),
                    butonText: "Design System",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "1/4",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "20/07/2022",
                    textColor: Color.fromARGB(255, 174, 107, 82),
                  ),

                  const SizedBox(height: 10),
                  //3.satır
                  const ToDoCard(
                    cardTitle: "Basic Compenent Setup",
                    butonColor: Color.fromARGB(255, 255, 213, 147),
                    butonText: "Design System",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "Completed",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "31/08/2022",
                    textColor: Color.fromARGB(255, 174, 107, 82),
                  ),

                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 20,
                    width: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.plus_one,
                          size: 15,
                          color: Color.fromARGB(255, 152, 150, 150),
                        ),
                        Text(
                          "Add Card",
                          style: TextStyle(
                              color: Color.fromARGB(255, 152, 150, 150)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          //5.sütun
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 239, 237, 237),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //1.sütun başlık
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Done ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 10,
                        backgroundColor: Color.fromARGB(255, 209, 206, 206),
                        child: Text(
                          "3",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 130),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //1.satır
                  const ToDoCard(
                    cardTitle: "Logotype Design ",
                    butonColor: Color.fromARGB(255, 120, 191, 214),
                    butonText: "Branding ",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "Completed",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "07/07/2022",
                    textColor: Color.fromARGB(255, 34, 61, 158),
                  ),
                  const SizedBox(height: 10),
                  //2.satır
                  const ToDoCard(
                    cardTitle: "Buttons",
                    butonColor: Color.fromARGB(255, 255, 213, 147),
                    butonText: "Design System",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "1/4",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "20/07/2022",
                    textColor: Color.fromARGB(255, 174, 107, 82),
                  ),

                  const SizedBox(height: 10),
                  //3.satır
                  const ToDoCard(
                    cardTitle: "Basic Compenent Setup",
                    butonColor: Color.fromARGB(255, 255, 213, 147),
                    butonText: "Design System",
                    leftIcon: Icon(Icons.domain_verification_sharp),
                    leftIconText: "Completed",
                    rightIcon: Icon(Icons.calendar_month),
                    rightIconText: "31/08/2022",
                    textColor: Color.fromARGB(255, 174, 107, 82),
                  ),

                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 20,
                    width: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.plus_one,
                          size: 15,
                          color: Color.fromARGB(255, 152, 150, 150),
                        ),
                        Text(
                          "Add Card",
                          style: TextStyle(
                              color: Color.fromARGB(255, 152, 150, 150)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
