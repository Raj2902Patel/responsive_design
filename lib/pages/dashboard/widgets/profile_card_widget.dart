import 'package:flutter/material.dart';
import 'package:responsive_interface/common/app_color.dart';

class ProfileCardWidget extends StatefulWidget {
  const ProfileCardWidget({super.key});

  @override
  State<ProfileCardWidget> createState() => _ProfileCardWidgetState();
}

class _ProfileCardWidgetState extends State<ProfileCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  "assets/user4.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
              const SizedBox(width: 10),
              const Column(
                children: [
                  Text(
                    "Neel Patel",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "HR Manager",
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          profieListTile("Joined Date", "18-Apr-2021"),
          profieListTile("Projects", "29 Active"),
          profieListTile("Accomplishment", "1710"),
        ],
      ),
    );
  }

  Widget profieListTile(text, value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.black,
            ),
          )
        ],
      ),
    );
  }
}
