import 'package:admin_dash_board/models/drawer_item_model.dart';
import 'package:admin_dash_board/widgets/active_and_inactive_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          )
        : inActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
