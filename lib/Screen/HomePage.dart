import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gyq/Screen/DropdwnSection.dart';
import 'package:gyq/Screen/Logo.dart';
import 'package:gyq/Screen/UpperContainer.dart';

import 'HomeQuoteTab.dart';
import 'QuoteAmount.dart';
import 'Search.dart';
import 'Time.dart';

class GYQHome extends StatefulWidget {
  const GYQHome({Key? key}) : super(key: key);

  @override
  State<GYQHome> createState() => _GYQHomeState();
}

class _GYQHomeState extends State<GYQHome> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  double? rateing = 5;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
          unselectedFontSize: 10,
          selectedFontSize: 12,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.add, color: Colors.white),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                label: "Notifications"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Profile"),
          ],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          showUnselectedLabels: true,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: const [Logo(), DropDownSection(), UpperContainer()],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: TabBar(
                unselectedLabelColor: Colors.black54,
                labelColor: Colors.black,
                indicatorColor: Colors.red,
                tabs: const [
                  HomeReceivedQuotesTabs(),
                  Tab(
                    text: "Enquires",
                  ),
                  Tab(
                    text: "History",
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: const [
                              Search(),
                              Icon1(),
                              Icon2(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 10),
                            child: SizedBox(
                              child: ListView.builder(
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Container(
                                        height: 100,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.4),
                                              spreadRadius: 1.7,
                                              blurRadius: 3,
                                              offset: const Offset(0.0, 0.9),
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.only(
                                                          bottom: 5),
                                                  child: CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        "assets/profile.jpg"),
                                                    radius: 20,
                                                  ),
                                                ),
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.only(
                                                          left: 8),
                                                  child: Text(
                                                    "Michael Knight",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        letterSpacing: 0.4),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8, top: 2),
                                                  child: Row(
                                                    children: [
                                                      RatingBar.builder(
                                                        itemSize: 10,
                                                        initialRating: 5,
                                                        minRating: 1,
                                                        direction:
                                                            Axis.horizontal,
                                                        allowHalfRating: false,
                                                        itemCount: 5,
                                                        itemPadding: const EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    0.0),
                                                        itemBuilder:
                                                            (context, _) =>
                                                                const Icon(
                                                          Icons.star,
                                                          color: Colors.yellow,
                                                        ),
                                                        onRatingUpdate:
                                                            (rating) {
                                                          setState(() {
                                                            rateing = rating;
                                                          });
                                                        },
                                                      ),
                                                      const SizedBox(width: 5),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            rateing
                                                                    ?.round()
                                                                    .toString() ??
                                                                "",
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 10),
                                                          ),
                                                          const Text(
                                                            '/ 5',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 10),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                                height: 70,
                                                child: VerticalDivider(
                                                  thickness: 0.2,
                                                )),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Icon(
                                                          Icons
                                                              .text_snippet_outlined,
                                                          size: 15,
                                                          color: Colors.grey,
                                                        ),
                                                        SizedBox(
                                                          width: 12,
                                                        ),
                                                        Text(
                                                          "Quote for flooring materials",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              letterSpacing:
                                                                  0.3,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    const QuoteAmount(),
                                                    const Time()
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Center(child: Text('No Enquires')),
                    const Center(child: Text('No History')),
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



class Icon2 extends StatelessWidget {
  const Icon2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10, top: 14),
      child: Container(
        height: 32,
        width: 46,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 0,
              blurRadius: 3,
              offset: const Offset(0.0, 0.9),
            ),
          ],
        ),
        child: const Icon(
          Icons.filter_alt_outlined,
          color: Colors.red,
        ),
      ),
    );
  }
}

class Icon1 extends StatelessWidget {
  const Icon1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: Container(
        height: 32,
        width: 46,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 0,
              blurRadius: 3,
              offset: const Offset(0.0, 0.9),
            ),
          ],
        ),
        child: const Icon(
          Icons.filter_list_outlined,
          color: Colors.red,
        ),
      ),
    );
  }
}

