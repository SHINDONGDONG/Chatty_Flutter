import 'package:chatty_flutter/screens/ticket_view.dart';
import 'package:chatty_flutter/utils/app_info_list.dart';
import 'package:chatty_flutter/utils/app_layout.dart';
import 'package:chatty_flutter/widgets/column_layout.dart';
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
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child:Row(
                  children: const [
                    AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger"),
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
