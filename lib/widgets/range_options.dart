
import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xfff1f1f1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          SizedBox(width: 18),
          Transform.rotate(
              angle: -1.57079633,
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color(0xff064060),
              ))
        ],
      ),
    );
  }
}
