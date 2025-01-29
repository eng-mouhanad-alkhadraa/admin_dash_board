import 'package:admin_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dash_board/widgets/custom_drawer.dart';
import 'package:admin_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:admin_dash_board/widgets/incom_section.dart';
import 'package:admin_dash_board/widgets/my_cards_and_transaction_history.dart';
import 'package:flutter/material.dart';

class DashbordTabletLayout extends StatelessWidget {
  const DashbordTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: DashbordMobileLayout(),
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
