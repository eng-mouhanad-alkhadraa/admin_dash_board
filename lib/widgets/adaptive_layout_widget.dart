import 'package:flutter/material.dart';

class AdaptiveLayOut extends StatelessWidget {
  const AdaptiveLayOut(
      {super.key,
      required this.mobilelayOut,
      required this.tabletlayout,
      required this.desktoplayout});
  final WidgetBuilder mobilelayOut, tabletlayout, desktoplayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // print('MediaQuery width =${MediaQuery.sizeOf(context).width}');
      // print('LayoutBuilder width = ${constraints.maxWidth}');
      if (constraints.maxWidth < 800) {
        return mobilelayOut(context);
        // + 32 < 900
      } else if (constraints.maxWidth < 1200) {
        return tabletlayout(context);
      } else {
        return desktoplayout(context);
      }
    });
  }
}
