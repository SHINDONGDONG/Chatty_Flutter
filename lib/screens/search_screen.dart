import 'package:chatty_flutter/utils/app_layout.dart';
import 'package:chatty_flutter/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20),),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are \nyou looking for?", style: Styles.headLineStyle.copyWith(fontSize: AppLayout.getHeight(35),),),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF4F6FD),
                // color: Colors.red,
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
              ),
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                    height: AppLayout.getHeight(30),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width*.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                          "Airline Tickets"
                        ),
                      ),
                    ),
                  Container(
                    height: AppLayout.getHeight(30),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width*.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                          "Hotels"
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure",),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival",),
          Gap(AppLayout.getHeight(20)),
          //Find Tickets Btn
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getWidth(18),
              horizontal: AppLayout.getHeight(15),
            ),
            decoration: BoxDecoration(
              color: Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10),),
            ),
            child: Row(
              children: [
                Center(
                  child: Text(
                    "Find Tickets", style: Styles.textStyle.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View All"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ],
                color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/sit.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss .",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(15),horizontal: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survery",style: Styles.headLineStyle2.copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survery about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            border: Border.all(width: 18, color: Color(0xFF189999),),
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                        ),
                          ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(200),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getWidth(15),
                      horizontal: AppLayout.getHeight(15),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18),),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take love",style: Styles.headLineStyle2.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold,),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(15)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "😍",
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: "😘",
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: "😳",
                                style: TextStyle(fontSize: 38),
                              )
                            ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}
