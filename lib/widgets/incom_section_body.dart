import 'package:admin_dash_board/utils/size_config.dart';
import 'package:admin_dash_board/widgets/detailed_incom_chart.dart';
import 'package:admin_dash_board/widgets/incom_chart.dart';
import 'package:admin_dash_board/widgets/incom_details.dart';
import 'package:flutter/material.dart';

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
// !   1200 desktop يعني انا بال SizeConfig.desktop
// !   1750    الطبيعي ui اصغر من هالرقم حيعمل مشكلة لذلك اعرض الودجت لما يكون عندي المشكلة و اذا ما في مشكلة اعرض ال
    return width >= SizeConfig.desktop && width < 1750
        ? Expanded(
            child: Padding(
            padding: const EdgeInsets.all(16),
            child: DetailedIncomChart(),
          ))
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomChart()),
              Expanded(flex: 2, child: IncomDetails())
            ],
          );
  }
}
