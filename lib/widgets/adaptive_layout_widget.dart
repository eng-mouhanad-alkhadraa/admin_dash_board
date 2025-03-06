import 'package:admin_dash_board/utils/size_config.dart';
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
      if (constraints.maxWidth < SizeConfig.tablet) {
        return mobilelayOut(context);
      } else if (constraints.maxWidth < SizeConfig.desktop) {
        return tabletlayout(context);
      } else {
        return desktoplayout(context);
      }
    });
  }
}

