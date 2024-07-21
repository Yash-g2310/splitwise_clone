import 'package:flutter/material.dart';
import 'package:spltwise_clone/pages/home_screen_pages/home_page.dart';
import 'package:spltwise_clone/pages/utils/google_facebook_button.dart';
import 'package:spltwise_clone/pages/utils/input_field.dart';

class LoginDialouge extends StatelessWidget {
  const LoginDialouge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 30, right: 30),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const InputField(name: 'Email Address'),
                const SizedBox(
                  height: 20,
                ),
                const InputField(name: 'Password'),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forgot your password?',
                        style: TextStyle(
                          color: Color.fromRGBO(116, 116, 116, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(91, 197, 166, 1),
                    minimumSize: const Size(110, 50),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color.fromRGBO(91, 197, 166, 1),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          const GoogleFacebookButton()
        ],
      ),
    );
  }
}
