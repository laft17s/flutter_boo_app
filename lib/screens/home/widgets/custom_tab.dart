import 'package:book_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTabWidget extends StatelessWidget {
  final int selected;
  final Function callback;

  CustomTabWidget({
    Key? key,
    required this.selected,
    required this.callback,
  }) : super(key: key);

  final tabs = [
    'Novel',
    'Comic',
    'Audio Book',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5.0),
      ),
      width: width,
      height: 50.0,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () => callback(index),
          child: Container(
            decoration: BoxDecoration(
              color: selected == index ? Colors.white : Colors.grey[200],
              borderRadius: BorderRadius.circular(5.0),
            ),
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            alignment: Alignment.center,
            width: (width - 40) / 2 - 10,
            child: Text(
              tabs[index],
              style: const TextStyle(
                color: kFont,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10.0,
        ),
        itemCount: tabs.length,
      ),
    );
  }
}
