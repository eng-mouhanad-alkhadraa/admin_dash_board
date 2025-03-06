import 'package:admin_dash_board/models/all_expensess_item_model.dart';
import 'package:admin_dash_board/utils/app_images.dart';
import 'package:admin_dash_board/widgets/all_expensess_header.dart';
import 'package:admin_dash_board/widgets/all_expensess_item.dart';
import 'package:admin_dash_board/widgets/all_expensess_items_list_view.dart';
import 'package:admin_dash_board/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        AllExpensessHeader(),
        SizedBox(
          height: 16,
        ),
        AllExpensessItemsListView()
      ]),
    );
  }
}
