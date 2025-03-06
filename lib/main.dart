import 'package:admin_dash_board/views/dashboard_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdminDashBord());

  // runApp(DevicePreview(enabled: true, builder: (context) => const AdminDashBord()));
  runApp(AdminDashBord());
}

class AdminDashBord extends StatelessWidget {
  const AdminDashBord({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //       locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
