import 'package:admin_dash_board/models/drawer_item_model.dart';
import 'package:admin_dash_board/models/user_info_model.dart';
import 'package:admin_dash_board/utils/app_images.dart';
import 'package:admin_dash_board/widgets/active_and_inactive_item.dart';
import 'package:admin_dash_board/widgets/drawer_items_list_view.dart';
import 'package:admin_dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 7 من عشرة
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTile(
            userInfoModel: UserInfoModel(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        DrawerItemsListView(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(
                  child: SizedBox(
                // تبع الشاشة height لما نصغر ال min height هاد ال
                height: 20,
              )),
              inActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system', image: Assets.imagesSettings)),
              inActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: Assets.imagesLogout)),
              SizedBox(
                height: 48,
              )
            ],
          ),
        )
      ]),
    );
  }
}
