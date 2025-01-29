import 'package:admin_dash_board/utils/size_config.dart';
import 'package:admin_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:admin_dash_board/widgets/custom_drawer.dart';
import 'package:admin_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:admin_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:admin_dash_board/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldkey,
      //!   SizeConfig.width  بال MediaQuery.sizeOf(context).width يمكن استبدال  ال
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scaffoldkey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu, color: Colors.black),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
            )
          : null,
      backgroundColor: Color(0xffF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? CustomDrawer()
          : null,
      body: AdaptiveLayOut(
          mobilelayOut: (context) => DashbordMobileLayout(),
          tabletlayout: (context) => DashbordTabletLayout(),
          desktoplayout: (context) => DashBoardDesktopLayOut()),
    );
  }
}
