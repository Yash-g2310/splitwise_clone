import 'package:flutter/material.dart';
import 'package:spltwise_clone/pages/utils/google_facebook_button.dart';
import 'package:spltwise_clone/pages/login_signup_screens/login_page.dart';
import 'package:spltwise_clone/pages/utils/header_circle.dart';

class LoginSignupPage extends StatelessWidget {
  const LoginSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HeaderCircle(),
          Column(
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/logo.png',
                height: 100,
              ),
              const SizedBox(height: 35),
              const Text(
                'SPLITWISE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const Spacer(
                flex: 3,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(102, 102, 102, 1),
                  minimumSize: const Size(250, 50),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromRGBO(102, 102, 102, 1),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(
                        value: 0,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(76, 187, 155, 1),
                  minimumSize: const Size(250, 50),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromRGBO(76, 187, 155, 1),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(
                        value: 1,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const GoogleFacebookButton(),
              const Spacer(flex: 1),
            ],
          ),
        ],
      ),
    );
  }
}
