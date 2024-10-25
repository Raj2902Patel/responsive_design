import 'package:flutter/material.dart';
import 'package:responsive_interface/common/app_color.dart';
import 'package:responsive_interface/common/app_responsive.dart';

class RecruitmentDataWidget extends StatefulWidget {
  const RecruitmentDataWidget({super.key});

  @override
  State<RecruitmentDataWidget> createState() => _RecruitmentDataWidgetState();
}

class _RecruitmentDataWidgetState extends State<RecruitmentDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recruitment Progress",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                  fontSize: 22.0,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.yellow,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.black,
                  ),
                ),
              )
            ],
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                //Table Header
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                  ),
                ),
                children: [
                  tableHeader("Full Name"),
                  if (!AppResponsive.isMobile(context))
                    tableHeader("Designation"),
                  tableHeader("Status"),
                  if (!AppResponsive.isMobile(context)) tableHeader(""),
                ],
              ),

              /// Table Data
              tableRow(
                context,
                name: "Neel patel",
                image: 'assets/user1.jpg',
                designation: "Python Developer",
                status: "Final Round",
                color: Colors.green,
              ),
              tableRow(
                context,
                name: "Neel patel",
                image: 'assets/user1.jpg',
                designation: "Python Developer",
                status: "Final Round",
                color: Colors.green,
              ),
              tableRow(
                context,
                name: "Neel patel",
                image: 'assets/user1.jpg',
                designation: "Python Developer",
                status: "Final Round",
                color: Colors.green,
              ),
              tableRow(
                context,
                name: "Neel patel",
                image: 'assets/user1.jpg',
                designation: "Python Developer",
                status: "Final Round",
                color: Colors.green,
              ),
              tableRow(
                context,
                name: "Neel patel",
                image: 'assets/user1.jpg',
                designation: "Python Developer",
                status: "Final Round",
                color: Colors.green,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Showing 4 out of 4 Results"),
                Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TableRow tableRow(context, {name, image, designation, color, status}) {
    return TableRow(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  image,
                  width: 30,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(name)
            ],
          ),
        ),
        //Designation
        if (!AppResponsive.isMobile(context)) Text(designation),
        //status
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              height: 10,
              width: 10,
            ),
            const SizedBox(width: 10),
            Text(status),
          ],
        ),
        //Menu Icon
        if (!AppResponsive.isMobile(context))
          Image.asset(
            "assets/more.png",
            color: Colors.grey,
            height: 30,
          ),
      ],
    );
  }

  Widget tableHeader(text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColor.black,
        ),
      ),
    );
  }
}
