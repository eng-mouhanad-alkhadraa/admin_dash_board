import 'package:admin_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dash_board/widgets/all_expensess.dart';
import 'package:admin_dash_board/widgets/dots_indicator.dart';
import 'package:admin_dash_board/widgets/incom_section.dart';
import 'package:admin_dash_board/widgets/my_cards_and_transaction_history.dart';
import 'package:admin_dash_board/widgets/my_cards_page_view.dart';
import 'package:admin_dash_board/widgets/custom_drawer.dart';
import 'package:admin_dash_board/widgets/my_card.dart';
import 'package:admin_dash_board/widgets/my_cards_section.dart';
import 'package:admin_dash_board/widgets/quick_invoice.dart';
import 'package:admin_dash_board/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class DashBoardDesktopLayOut extends StatelessWidget {
  const DashBoardDesktopLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: CustomDrawer(),
      ),
      SizedBox(width: 32),
      Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      //! التعديل اللي قمت به SingleChildScrollView
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(height: 40),
                        MyCardsAndTransactionHistory(),
                        SizedBox(height: 24),
                        Expanded(child: IncomSection())
                      ],
                    ))
                  ],
                ),
              )
            ],
          ))
    ]);
  }
}
