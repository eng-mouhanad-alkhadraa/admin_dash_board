import 'package:admin_dash_board/widgets/custom_dot.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding:  EdgeInsets.only(right: 6),
                child: CustomDotIndicator(isActive: index == currentPageIndex),
              )),
    );
  }
}
