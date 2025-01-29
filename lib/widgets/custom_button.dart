import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundcolor, this.textcolor});
  final Color ?backgroundcolor, textcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 0,
            backgroundColor:backgroundcolor?? Color(0xff4EB7F2)),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: AppStyles.styleSemiBold16(context).copyWith(color: textcolor),
        ),
      ),
    );
  }
}
