import 'package:admin_dash_board/models/transaction_model.dart';
import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            transactionModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            transactionModel.date,
            style: AppStyles.styleRrgular16(context)
                .copyWith(color: Color(0xffAAAAAA)),
          ),
        ),
        trailing: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            transactionModel.amount,
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: transactionModel.isWithdrawal
                  ? Color(0xffF3735E)
                  : Color(0xff7DD97B),
            ),
          ),
        ),
      ),
    );
  }
}
