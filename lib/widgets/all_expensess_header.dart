import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:admin_dash_board/widgets/range_options.dart';
import 'package:flutter/material.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
// Spacer(),
        Expanded(child: SizedBox()),

        RangeOptions()
      ],
    );
  }
}
