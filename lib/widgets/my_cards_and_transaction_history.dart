import 'package:admin_dash_board/widgets/custom_background_container.dart';
import 'package:admin_dash_board/widgets/my_cards_section.dart';
import 'package:admin_dash_board/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),

          TransactionHistory()
        ],
      ),
    );
  }
}
