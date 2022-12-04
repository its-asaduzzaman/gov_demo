import 'package:flutter/material.dart';
import 'package:gov_demo/screens/totho_screen.dart';
import 'package:gov_demo/utils/colors.dart';

import '../widgets/big_card.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/medium_text_widget.dart';
import '../widgets/small_card.dart';
import '../widgets/small_text_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // main 1st part
          Container(
            width: double.maxFinite,
            height: 220,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TothoScreen()),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    backgroundImage: AssetImage("assets/image/logo.png"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MediumSizeText(
                  text: "Joypurhat Zilla",
                ),
                SizedBox(
                  height: 20,
                ),
                SmallSizeText(
                  text: "Sheikh Md Asaduzzaman",
                ),
                SmallSizeText(
                  text: "01746211114",
                ),
              ],
            ),
          ),
          //  main 2nd part

          Expanded(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  //small cards
                  Row(
                    children: [
                      Expanded(
                        child: SmallCard(
                          backgroundColour: AppColors.mainColor,
                          number: "5332",
                          text: "Holding Entry",
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SmallCard(
                          backgroundColour: AppColors.purpleColor,
                          number: "5332",
                          text: "Holding Card Active",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SmallCard(
                          backgroundColour: AppColors.lightBlueColor,
                          number: "5332",
                          text: "Trading Entry",
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SmallCard(
                          backgroundColour: AppColors.orangeColor,
                          number: "5332",
                          text: "Holding Card Active",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //  big cards
                  BigCard(
                    mainText: "Holding",
                    smallText1: "Holding\nEntry",
                    smallText2: "Holding Card\nActivity",
                    smallText3: "Payment\nReceive",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  BigCard(
                    mainText: "Trading",
                    smallText1: "Trading\nEntry",
                    smallText2: "Trading Card\nActivity",
                    smallText3: "Payment\nReceive",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
