import 'package:flutter/material.dart';
import 'package:responsive_interface/common/app_color.dart';
import 'package:responsive_interface/common/app_responsive.dart';
import 'package:responsive_interface/pages/dashboard/widgets/calendar_widget.dart';
import 'package:responsive_interface/pages/dashboard/widgets/header_widget.dart';
import 'package:responsive_interface/pages/dashboard/widgets/notification_card_widget.dart';
import 'package:responsive_interface/pages/dashboard/widgets/profile_card_widget.dart';
import 'package:responsive_interface/pages/dashboard/widgets/recruitment_data_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: [
          //header Part
          const HeaderWidget(),

          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const NotificationCardWidget(),
                          const SizedBox(
                            height: 20,
                          ),
                          if (AppResponsive.isMobile(context)) ...{
                            const CalendarWidget(),
                            const SizedBox(
                              height: 20,
                            ),
                          },
                          const RecruitmentDataWidget(),
                        ],
                      ),
                    ),
                  ),
                  if (!AppResponsive.isMobile(context))
                    Expanded(
                      child: Container(
                        child: const Column(
                          children: [
                            CalendarWidget(),
                            SizedBox(
                              height: 20,
                            ),
                            ProfileCardWidget(),
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
