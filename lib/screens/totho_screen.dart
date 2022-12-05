import 'package:flutter/material.dart';
import 'package:gov_demo/screens/home_page.dart';
import 'package:gov_demo/screens/profile_screen.dart';
import 'package:gov_demo/utils/colors.dart';
import 'package:gov_demo/widgets/medium_text_widget.dart';
import 'package:gov_demo/widgets/small_text_widget.dart';

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
            SizedBox(
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                ? Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                            right: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                            left: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                          ),
                        ),
                        width: double.maxFinite,
                        height: 500,
                        child: ListView(
                          padding: EdgeInsets.all(0),
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "হোল্ডিং এর ধরন",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'আবাসিক হোল্ডিং',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "সুবিধাভুগির নাম",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "অভিভাবকের ধরন",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'পিতার নাম',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "অভিভাবকের নাম",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "মায়ের নাম",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "লিঙ্গ",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'পুরুষ',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "বৈবাহিক অবস্থা",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'বিবাহিত',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "জন্ম তারিখ",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'dd/mm/yyy',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "পরিচয়ের ধরন",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'NID নাম্বার',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "পরিচয় পত্রের নাম্বার",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "মোবাইল নাম্বার",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "ধর্ম",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'ইসলাম',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "পারিবারিক অবস্থার ধরন",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'উচ্চ ভিত্ত',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "পুরুষ সদস্য সংখ্যা",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediumSizeText(
                            text: "তালিকায় ফিরে যান",
                            color: Colors.black,
                            weight: FontWeight.w300,
                            size: 16,
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: MediumSizeText(
                                text: "সংরক্ষন করুন",
                                size: 14,
                                weight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                : Container(),
            // thikana information
            selectedPage == pageType.thikana
                ? Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                            right: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                            left: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                          ),
                        ),
                        width: double.maxFinite,
                        height: 500,
                        child: ListView(
                          padding: EdgeInsets.all(0),
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "হোল্ডিং নাম্বার",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "ওয়ার্ড নাম্বার",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'নির্বাচন করুন',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "গ্রাম",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'নির্বাচন করুন',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "পোস্টাল কোড / জিপ কোড",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'নির্বাচন করুন',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "ডাকঘর",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'নির্বাচন করুন',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "হোল্ডিং নাম্বার",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'নির্বাচন করুন',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediumSizeText(
                            text: "তালিকায় ফিরে যান",
                            color: Colors.black,
                            weight: FontWeight.w300,
                            size: 16,
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: MediumSizeText(
                                text: "সংরক্ষন করুন",
                                size: 14,
                                weight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                : Container(),
            // onnoano information
            selectedPage == pageType.onnano
                ? Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                            right: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                            left: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                          ),
                        ),
                        width: double.maxFinite,
                        height: 500,
                        child: ListView(
                          padding: EdgeInsets.all(0),
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "বৈদ্যুতিক আবস্থা",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'হ্যাঁ',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "স্যানিটেশনের অবস্থা",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'পাকা',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "বাড়ির ধরন",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'নপাকা বাড়ি',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "মোট বাড়ি",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "পেশা",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'প্রবাসী',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SmallSizeText(
                                      text: "শেষ ট্যাক্স প্রদানের অর্থ বছর",
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediumSizeText(
                            text: "তালিকায় ফিরে যান",
                            color: Colors.black,
                            weight: FontWeight.w300,
                            size: 16,
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: MediumSizeText(
                                text: "সংরক্ষন করুন",
                                size: 14,
                                weight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                : Container(),
            //  paribarik information
            selectedPage == pageType.paribarik
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                            right: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                            left: BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                          ),
                        ),
                        width: double.maxFinite,
                        height: 360,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(),
                                Container(
                                  height: 40,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: MediumSizeText(
                                      text: "নতুন তথ্য যোগ করুন",
                                      size: 14,
                                      weight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TableWidget(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediumSizeText(
                            text: "তালিকায় ফিরে যান",
                            color: Colors.black,
                            weight: FontWeight.w300,
                            size: 16,
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: MediumSizeText(
                                text: "সংরক্ষন করুন",
                                size: 14,
                                weight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
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
              child: Icon(
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
              child: Icon(
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
