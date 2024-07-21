import 'package:flutter/material.dart';

class GoogleFacebookButton extends StatelessWidget {
  const GoogleFacebookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(241, 237, 237, 1),
            minimumSize: const Size(110, 50),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Color.fromRGBO(241, 237, 237, 1),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: Image.asset(
            'assets/images/google.png',
            width: 38,
            height: 38,
          ),
        ),
        const SizedBox(width: 30),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(21, 125, 195, 1),
            minimumSize: const Size(110, 50),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Color.fromRGBO(21, 125, 195, 1),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: Image.asset(
            'assets/images/facebook.png',
            width: 40,
            height: 40,
          ),
        )
      ],
    );
  }
}
