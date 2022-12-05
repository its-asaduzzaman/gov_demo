import 'package:flutter/material.dart';
import 'package:gov_demo/screens/home_page.dart';
import 'package:gov_demo/screens/profile_screen.dart';
import 'package:gov_demo/utils/colors.dart';
import 'package:gov_demo/widgets/medium_text_widget.dart';
import 'package:gov_demo/widgets/small_text_widget.dart';

import '../widgets/info_widgets/khana_info_widget.dart';
import '../widgets/info_widgets/onnano_info_widget.dart';
import '../widgets/info_widgets/paribarik_info_widget.dart';
import '../widgets/info_widgets/thikana_info_widget.dart';
import '../widgets/table_widget.dart';

enum pageType {
  khana,
  thikana,
  onnano,
  paribarik,
}

class TothoScreen extends StatefulWidget {
  const TothoScreen({Key? key}) : super(key: key);

  @override
  State<TothoScreen> createState() => _TothoScreenState();
}

class _TothoScreenState extends State<TothoScreen> {
  pageType selectedPage = pageType.khana;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        margin: const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 10),
        child: Column(
          children: [
            //image capture
            selectedPage == pageType.khana
                ? Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade600,
                            spreadRadius: 1,
                            blurRadius: 2)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: double.maxFinite,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.transGreenColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.black38,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          MediumSizeText(
                            text: "Capture NID",
                            color: Colors.black,
                            weight: FontWeight.w300,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  )
                : Container(),
            const SizedBox(
              height: 10,
            ),
            //  All information
            Container(
              width: double.maxFinite,
              height: 81,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPage = pageType.khana;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                          border: selectedPage == pageType.khana
                              ? const Border(
                                  top: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                  right: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                  left: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                )
                              : const Border(
                                  bottom: BorderSide(
                                    color: Colors.black38,
                                    width: 2,
                                  ),
                                ),
                        ),
                        child: Text(
                          "খানা প্রধানের\n"
                          "তথ্য\n",
                          style: TextStyle(
                              color: selectedPage == pageType.khana
                                  ? AppColors.mainColor
                                  : Colors.black38,
                              fontWeight: selectedPage == pageType.khana
                                  ? FontWeight.bold
                                  : null),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPage = pageType.thikana;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                          border: selectedPage == pageType.thikana
                              ? const Border(
                                  top: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                  right: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                  left: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                )
                              : const Border(
                                  bottom: BorderSide(
                                    color: Colors.black38,
                                    width: 2,
                                  ),
                                ),
                        ),
                        child: Text(
                          "ঠিকানা\n\n\n",
                          style: TextStyle(
                              color: selectedPage == pageType.thikana
                                  ? AppColors.mainColor
                                  : Colors.black38,
                              fontWeight: selectedPage == pageType.thikana
                                  ? FontWeight.bold
                                  : null),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPage = pageType.onnano;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                          border: selectedPage == pageType.onnano
                              ? const Border(
                                  top: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                  right: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                  left: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                )
                              : const Border(
                                  bottom: BorderSide(
                                    color: Colors.black38,
                                    width: 2,
                                  ),
                                ),
                        ),
                        child: Text(
                          "অন্যান্য\n"
                          "তথ্য\n",
                          style: TextStyle(
                              color: selectedPage == pageType.onnano
                                  ? AppColors.mainColor
                                  : Colors.black38,
                              fontWeight: selectedPage == pageType.onnano
                                  ? FontWeight.bold
                                  : null),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPage = pageType.paribarik;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                          border: selectedPage == pageType.paribarik
                              ? const Border(
                                  top: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                  right: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                  left: BorderSide(
                                    color: Colors.black38,
                                    width: 1.5,
                                  ),
                                )
                              : const Border(
                                  bottom: BorderSide(
                                    color: Colors.black38,
                                    width: 2,
                                  ),
                                ),
                        ),
                        child: Text(
                          "পারিবারিক সম্পর্ক\n"
                          "সংক্রান্ত তথ্য",
                          style: TextStyle(
                              color: selectedPage == pageType.paribarik
                                  ? AppColors.mainColor
                                  : Colors.black38,
                              fontWeight: selectedPage == pageType.paribarik
                                  ? FontWeight.bold
                                  : null),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //khana information
            selectedPage == pageType.khana
                ? const KhanaInfoWidget()
                : Container(),
            // thikana information
            selectedPage == pageType.thikana
                ? const ThikanaInfoWidget()
                : Container(),
            // onnoano information
            selectedPage == pageType.onnano
                ? const OnnanoInfoWidget()
                : Container(),
            //  paribarik information
            selectedPage == pageType.paribarik
                ? const ParibarikInfoWidget()
                : Container(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.mainColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            label: "Person",
          ),
        ],
      ),
    );
  }
}
