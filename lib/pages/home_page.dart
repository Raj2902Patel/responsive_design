import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_interface/common/app_color.dart';
import 'package:responsive_interface/common/app_responsive.dart';
import 'package:responsive_interface/controllers/menu_controller.dart';
import 'package:responsive_interface/pages/dashboard/dashboard.dart';
import 'package:responsive_interface/pages/widgets/side_bar_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      key: Provider.of<Menu>(context, listen: false).scaffoldKay,
      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //side Navigation Menu
          if (AppResponsive.isDesktop(context))
            const Expanded(
              child: SideBar(),
            ),
          //Main Body section
          const Expanded(
            flex: 4,
            child: Dashboard(),
          ),
        ],
      )),
    );
  }
}
