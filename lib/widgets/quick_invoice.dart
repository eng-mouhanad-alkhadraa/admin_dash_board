import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:admin_dash_board/widgets/custom_background_container.dart';
import 'package:admin_dash_board/widgets/custom_text_field.dart';
import 'package:admin_dash_board/widgets/latest_transaction.dart';
import 'package:admin_dash_board/widgets/latest_transaction_list_view.dart';
import 'package:admin_dash_board/widgets/quick_invoice_form.dart';
import 'package:admin_dash_board/widgets/quick_invoice_header.dart';
import 'package:admin_dash_board/widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        QuickInvoiceHeader(),
        LatestTransaction(),
        Divider(
          color: Color(0xffF1F1F1),
          height: 48,
        ),
        QuickInvoiceForm(),
      ]),
    );
  }
}
