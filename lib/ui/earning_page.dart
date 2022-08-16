import 'package:apitestinglogin/ui/profile_page.dart';
import 'package:apitestinglogin/ui/widgets/list_view_behavior.dart';
import 'package:flutter/material.dart';

import 'history_date_selected_card.dart';

class EarningPage extends StatefulWidget {
  const EarningPage({Key? key}) : super(key: key);

  @override
  State<EarningPage> createState() => _EarningPageState();
}

class _EarningPageState extends State<EarningPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      HistoryDateSelectedCard(formOrTo: 'From'),
                      HistoryDateSelectedCard(formOrTo: 'To'),
                    ],
                  ),
                  const SizedBox(height: 15),

                  //Overview
                  Container(
                    width: width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      color: const Color(0xfff2f2f7),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Overview',
                          style: TextStyle(
                            color: Color(0xA6000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 18),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                OverviewContent(
                                  title: 'TOTAL EARNING',
                                  titleContent: '11,000 MMK',
                                ),
                                SizedBox(height: 20),
                                OverviewContent(
                                  title: 'DELIVERIES',
                                  titleContent: '5',
                                ),
                              ],
                            ),
                            const SizedBox(width: 50),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                OverviewContent(
                                  title: 'TIPS',
                                  titleContent: '1,000 MMK',
                                ),
                                SizedBox(height: 20),
                                OverviewContent(
                                  title: 'REWARDS',
                                  titleContent: '0',
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Earning and Withdraw
            SizedBox(
              height: 50,
              child: AppBar(
                backgroundColor: Colors.white,
                bottom: const TabBar(
                  tabs: [
                    Tab(
                      text: 'EARNING',
                    ),
                    Tab(
                      text: 'WITHDRAW',
                    ),
                  ],
                  labelColor: Color(0xffF55F01),
                  indicatorColor: Color(0xffF55F01),
                  unselectedLabelColor: Color(0xBD000000),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TabBarView(
                  children: [
                    ScrollConfiguration(
                      behavior: ListViewBehavior(),
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide.none,
                                right: BorderSide.none,
                                left: BorderSide.none,
                                bottom: BorderSide(
                                  color: Color(0x33000000),
                                  width: 1.5,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      '02/06/2022 • 02:34 PM',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0x80000000),
                                      ),
                                    ),
                                    Text(
                                      'CDC14990432301',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0x80000000),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  '2,000 MMK',
                                  style: TextStyle(
                                    color: Color(0xA6000000),
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const Text("hi"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OverviewContent extends StatelessWidget {
  const OverviewContent({
    Key? key,
    required this.title,
    required this.titleContent,
  }) : super(key: key);

  final String title;
  final String titleContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0x80000000),
            fontSize: 11,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          titleContent,
          style: const TextStyle(
            color: Color(0xB2000000),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
