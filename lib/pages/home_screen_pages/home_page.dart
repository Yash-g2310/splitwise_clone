import 'package:flutter/material.dart';
import 'package:spltwise_clone/pages/home_screen_pages/activity_list.dart';
import 'package:spltwise_clone/pages/home_screen_pages/friend_list.dart';
import 'package:spltwise_clone/pages/home_screen_pages/groups_list.dart';
import 'package:spltwise_clone/pages/utils/name_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Column moneyHeading({required String heading, required int money}) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            heading,
            style: const TextStyle(color: Color.fromRGBO(97, 97, 97, 1)),
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                child: Icon(
                  Icons.currency_rupee_sharp,
                  color: Color.fromRGBO(130, 125, 125, 1),
                  size: 14,
                ),
              ),
              Text(
                '$money',
                style: const TextStyle(
                  fontSize: 24,
                  color: Color.fromRGBO(97, 97, 97, 1),
                ),
              ),
            ],
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(76, 187, 155, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(76, 187, 155, 1),
        title: const Text(
          'SPLITWISE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
            style: Theme.of(context).iconButtonTheme.style,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
            color: Colors.white,
            style: Theme.of(context).iconButtonTheme.style,
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_sharp),
          color: Colors.white,
          style: Theme.of(context).iconButtonTheme.style,
        ),
      ),
      body: Column(
        children: [
          const NameIcon(),
          const SizedBox(height: 8),
          const Text(
            'Yash Gupta',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  blurRadius: 4,
                )
              ],
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(20),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  moneyHeading(heading: 'You are owed', money: 1500),
                  const VerticalDivider(
                    thickness: 2,
                    color: Color.fromRGBO(225, 225, 225, 1),
                  ),
                  moneyHeading(heading: 'You owe', money: 750),
                  const VerticalDivider(
                    thickness: 2,
                    color: Color.fromRGBO(225, 225, 225, 1),
                  ),
                  moneyHeading(heading: 'Total Balance', money: 750),
                ],
              ),
            ),
          ),
          Expanded(
            child: DefaultTabController(
              initialIndex: 0,
              length: 3,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.12),
                      blurRadius: 4,
                    )
                  ],
                  color: Colors.white,
                ),
                child: const Column(
                  children: [
                    TabBar(
                      automaticIndicatorColorAdjustment: false,
                      indicatorColor: Color.fromRGBO(76, 187, 155, 1),
                      indicatorWeight: 2,
                      indicatorPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      dividerHeight: 0,
                      labelColor: Color.fromRGBO(76, 187, 155, 1),
                      unselectedLabelColor: Color.fromRGBO(97, 97, 97, 1),
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      tabs: [
                        Tab(
                          child: Text('FRIENDS'),
                        ),
                        Tab(
                          child: Text('GROUPS'),
                        ),
                        Tab(
                          child: Text('ACTIVITY'),
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [FriendList(), GroupsList(), ActivityList()],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: const Color.fromRGBO(76, 187, 155, 1),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(76, 187, 155, 1),
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
              )
            ],
          ),
          child: const Center(
            child: Icon(
              Icons.add_rounded,
              color: Colors.white,
              size: 29,
            ),
          ),
        ),
      ),
    );
  }
}
