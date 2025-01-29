import 'package:admin_dash_board/models/user_info_model.dart';
import 'package:admin_dash_board/utils/app_images.dart';
import 'package:admin_dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    //!scrollable قليل و  items الطريقة الاولى اذا كان عدد ال
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: items
              .map((e) =>
                  IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
              .toList()),
    );

    //!scrollable كبير و  items الطريقة الثانية اذا كان عدد ال
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoModel: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
