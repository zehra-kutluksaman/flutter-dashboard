import 'package:flutter/material.dart';

class ToDoCard extends StatefulWidget {
  final String cardTitle;
  final String butonText;
  final Color butonColor;
  final Color textColor;
  final Icon leftIcon;
  final String leftIconText;
  final Icon rightIcon;
  final String rightIconText;
  const ToDoCard(
      {super.key,
      required this.cardTitle,
      required this.butonText,
      required this.butonColor,
      required this.textColor,
      required this.leftIcon,
      required this.leftIconText,
      required this.rightIcon,
      required this.rightIconText});

  @override
  State<ToDoCard> createState() => _ToDoCardState();
}

class _ToDoCardState extends State<ToDoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 248, 248, 248)),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.cardTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    widget.butonColor,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  widget.butonText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: widget.textColor,
                  ),
                ),
              ),
              const CircleAvatar(
                radius: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color.fromARGB(255, 224, 222, 222),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.leftIcon,
              //SizedBox(width: 1),
              Text(widget.leftIconText),
              widget.rightIcon,
              //SizedBox(width: 1),
              Text(widget.rightIconText),
            ],
          ),
        ],
      ),
    );
  }
}
