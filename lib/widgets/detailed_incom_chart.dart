import 'dart:math';

import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomChart extends StatefulWidget {
  const DetailedIncomChart({super.key});

  @override
  State<DetailedIncomChart> createState() => _DetailedIncomChartState();
}

class _DetailedIncomChartState extends State<DetailedIncomChart> {
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
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            radius: activeIndex == 0 ? 60 : 50,
            title: activeIndex == 0 ? 'Design service' : '40%',
            value: 40,
            //!  primary هي اللون ال  null
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
            color: Color(0XFF208CC8),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
            radius: activeIndex == 1 ? 60 : 50,
            title: activeIndex == 1 ? 'Design product' : '25%',
            value: 25,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 1 ? null : Colors.white),
            color: Color(0XFF4EB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
            radius: activeIndex == 2 ? 60 : 50,
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            value: 20,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
            color: Color(0XFF064061),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
            radius: activeIndex == 3 ? 60 : 50,
            title: activeIndex == 3 ? 'Other' : '22%',
            value: 22,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
            color: Color(0XFFE2DECD),
          ),
        ]);
  }
}
