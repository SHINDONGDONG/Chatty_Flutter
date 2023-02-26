import 'package:chatty_flutter/screens/ticket_view.dart';
import 'package:chatty_flutter/utils/app_info_list.dart';
import 'package:chatty_flutter/utils/app_layout.dart';
import 'package:chatty_flutter/widgets/column_layout.dart';
import 'package:chatty_flutter/widgets/layout_builder_widget.dart';
import 'package:chatty_flutter/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(20),
              horizontal: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Ticket",
                style: Styles.headLineStyle,
              ),
              Gap(AppLayout.getHeight(20)),
              AppTicketTabs(firstTab: "Upcomming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(height: 1,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: Colors.white,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger",
                          isColor: true,alignment: CrossAxisAlignment.start,),
                        AppColumnLayout(firstText: "5221 1124", secondText: "passport",
                            isColor:true,alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWdiget(section: 15,isColor: true,),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(firstText: "36363884 506884", secondText: "Number of e-ticket",
                          isColor: true,alignment: CrossAxisAlignment.start,),
                        AppColumnLayout(firstText: "B2GED2", secondText: "Booking code",
                            isColor:true,alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWdiget(section: 15,isColor: true,),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                             Row(
                               children: [
                                 Image.asset("assets/images/visa.png",scale: 11,),
                                 Text(" *** 2543",style: Styles.headLineStyle3,),

                               ],
                             ),
                                Gap(5),
                                Text("Payment method",style: Styles.headLineStyle4),
                          ],
                        ),
                        AppColumnLayout(
                            firstText: "\$244.99",
                            secondText: "Price",
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
