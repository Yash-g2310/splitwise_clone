import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spltwise_clone/pages/login_signup_screens/login_sign_up_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginSignupPage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 1),
            Image.asset(
              'assets/images/logo.png',
              width: 126,
              height: 128,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'SPLITWISE',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(100, 201, 172, 1),
              ),
            ),
            const Spacer(flex: 3),
            const Text(
              'Split bills in easy way',
              style: TextStyle(
                fontSize: 22,
                color: Color.fromRGBO(102, 102, 102, 1),
              ),
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
