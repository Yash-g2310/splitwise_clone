import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String name;
  const InputField({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            color: Color.fromRGBO(71, 71, 71, 1),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          cursorWidth: 1,
          cursorColor: Colors.black,
        )
      ],
    );
  }
}
