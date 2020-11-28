import 'package:flutter/material.dart';

class PageViewIndicator extends StatelessWidget {
  final int pageLength;
  final int selectedIndex;

  const PageViewIndicator({Key key, this.pageLength, this.selectedIndex})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageLength,
        (index) => AnimatedContainer(
          height: 10,
          width: 10,
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: selectedIndex == index ? Color(0xFF667EEA) : Colors.white,
              // boxShadow: [
              //   BoxShadow(
              //       blurRadius: 2,
              //       color:
              //           selectedIndex == index ? Colors.white : Colors.black),
              // ],
              shape: BoxShape.circle),
        ),
      ),
    );
  }
}
