import 'dart:developer';

import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:admin_dash_board/widgets/incom_details_model.dart';
import 'package:admin_dash_board/widgets/item_details.dart';
import 'package:flutter/material.dart';

class IncomDetails extends StatelessWidget {
  const IncomDetails({super.key});
  static const items = [
    ItemDetailsModel(
        color: Color(0xff208CC8), title: 'Design service', value: '40%'),
    ItemDetailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', value: '25%'),
    ItemDetailsModel(
        color: Color(0xff064061), title: 'Product royalti', value: '20%'),
    ItemDetailsModel(color: Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );

    // return ListView.builder(itemCount: items.length,shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return ItemDetails( itemDetailsModel: items[index]);
    //   },
    // );
  }
}
