import 'package:flutter/material.dart';

class GiveMoney extends StatelessWidget {
  final int value;
  const GiveMoney({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
          '$value',
          style: const TextStyle(
            fontSize: 24,
            color: Color.fromRGBO(97, 97, 97, 1),
          ),
        ),
      ],
    );
  }
}
