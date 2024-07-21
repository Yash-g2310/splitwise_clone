import 'package:flutter/material.dart';
import 'package:spltwise_clone/pages/utils/header_circle.dart';
import 'package:spltwise_clone/pages/login_signup_screens/login_dialouge.dart';
import 'package:spltwise_clone/pages/login_signup_screens/sign_up_dialouge.dart';

class LoginPage extends StatelessWidget {
  final int value;
  const LoginPage({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: value,
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            const HeaderCircle(),
            Column(
              children: [
                AppBar(
                  toolbarHeight: 105,
                  leadingWidth: 75,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 45,
                      width: 45,
                    ),
                  ),
                  backgroundColor: const Color.fromRGBO(76, 187, 155, 1),
                  title: const Text(
                    'SPLITWISE',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  centerTitle: true,
                ),
                const TabBar(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  indicatorColor: Color.fromRGBO(76, 187, 155, 1),
                  dividerHeight: 0,
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                  unselectedLabelStyle: TextStyle(
                    color: Color.fromRGBO(236, 236, 236, 1),
                    fontSize: 16,
                  ),
                  tabs: [
                    Tab(
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'LOGIN',
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'SIGN UP',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      LoginDialouge(),
                      SignUpDialouge(),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
