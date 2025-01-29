import 'package:admin_dash_board/models/all_expensess_item_model.dart';
import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:admin_dash_board/widgets/all_expensess_item_header.dart';
import 'package:admin_dash_board/widgets/inactive_and_active_all_expensess_item.dart';
import 'package:flutter/material.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensessItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(itemModel: itemModel)
        : InActiveAllExpensessItem(itemModel: itemModel);
  }
}
