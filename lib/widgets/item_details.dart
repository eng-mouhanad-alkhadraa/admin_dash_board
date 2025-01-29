import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:admin_dash_board/widgets/incom_details_model.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    // !  desktop  الصغير لل width الطريقة الاولى هاد الحل عل
    // return Padding(
    //   padding: const EdgeInsets.only(left: 16.0),
    //   child: FittedBox(
    //     fit: BoxFit.scaleDown,
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 12,
    //           height: 12,
    //           decoration: ShapeDecoration(
    //               color: itemDetailsModel.color, shape: OvalBorder()),
    //         ),
    //         SizedBox(
    //           width: 12,
    //         ),
    //         Text(
    //           itemDetailsModel.title,
    //           style: AppStyles.styleRrgular16,
    //         ),
    //         SizedBox(
    //           width: 24,
    //         ),
    //         Text(
    //           itemDetailsModel.value,
    //           style: AppStyles.styleMedium16,
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:
            ShapeDecoration(color: itemDetailsModel.color, shape: OvalBorder()),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRrgular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
