import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_interface/common/app_color.dart';
import 'package:responsive_interface/common/app_responsive.dart';
import 'package:responsive_interface/controllers/menu_controller.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          if (!AppResponsive.isDesktop(context))
            IconButton(
                onPressed:
                    Provider.of<Menu>(context, listen: false).controlMenu,
                icon: Icon(
                  Icons.menu,
                  color: AppColor.black,
                )),
          const Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (!AppResponsive.isMobile(context)) ...{
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                navigationIcon(icon: Icons.search),
                navigationIcon(icon: Icons.send),
                navigationIcon(icon: Icons.notifications_none_rounded),
              ],
            ),
          }
        ],
      ),
    );
  }

  Widget navigationIcon({icon}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: AppColor.black,
      ),
    );
  }
}
