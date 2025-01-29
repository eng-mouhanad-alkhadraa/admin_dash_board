import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomChart extends StatefulWidget {
  const IncomChart({super.key});

  @override
  State<IncomChart> createState() => _IncomChartState();
}

class _IncomChartState extends State<IncomChart> {
  //   تبعا 0Index ال section  لان اول active يعني ليست
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, PieTouchResponse) {
            activeIndex =
                PieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 0 ? 60 : 50,
            value: 40,
            color: Color(0XFF208CC8),
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 1 ? 60 : 50,
            value: 25,
            color: Color(0XFF4EB7F2),
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 2 ? 60 : 50,
            value: 20,
            color: Color(0XFF064061),
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 3 ? 60 : 50,
            value: 22,
            color: Color(0XFFE2DECD),
          ),
        ]);
  }
}
