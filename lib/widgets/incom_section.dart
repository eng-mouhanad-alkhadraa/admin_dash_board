import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:admin_dash_board/widgets/custom_background_container.dart';
import 'package:admin_dash_board/widgets/incom_chart.dart';
import 'package:admin_dash_board/widgets/incom_details.dart';
import 'package:admin_dash_board/widgets/incom_section_body.dart';
import 'package:admin_dash_board/widgets/incom_section_header.dart';
import 'package:flutter/material.dart';

class IncomSection extends StatelessWidget {
  const IncomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [IncomSectionHeader(), IncomSectionBody()],
      ),
    );
  }
}
