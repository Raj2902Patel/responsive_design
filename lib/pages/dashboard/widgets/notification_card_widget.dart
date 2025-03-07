import 'package:flutter/material.dart';
import 'package:responsive_interface/common/app_color.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.yellow,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColor.black,
                  ),
                  children: const [
                    TextSpan(text: "Good Morning "),
                    TextSpan(
                      text: "Neel Patel!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Today you have 9 New Applications.\nAlso you need to hire 2 new UX Designers. \n1. React Native Developer",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.black,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Read More",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          if (MediaQuery.of(context).size.width >= 620) ...{
            const Spacer(),
            Image.asset(
              "assets/notification_image.png",
              height: 160,
            ),
          }
        ],
      ),
    );
  }
}
