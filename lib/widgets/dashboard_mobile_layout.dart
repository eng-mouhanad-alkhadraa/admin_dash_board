import 'package:admin_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dash_board/widgets/incom_section.dart';
import 'package:admin_dash_board/widgets/my_cards_and_transaction_history.dart';
import 'package:flutter/material.dart';

class DashbordMobileLayout extends StatelessWidget {
  const DashbordMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(width: 24),
          MyCardsAndTransactionHistory(),
          SizedBox(width: 24),
          IncomSection()
        ],
      ),
    );
  }
}
