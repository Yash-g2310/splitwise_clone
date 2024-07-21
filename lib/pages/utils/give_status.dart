import 'package:flutter/material.dart';

class GiveStatus extends StatelessWidget {
  final String head;
  final String body;
  const GiveStatus({
    super.key,
    required this.head,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          head,
          softWrap: true,
          style: const TextStyle(
            color: Color.fromRGBO(97, 97, 97, 1),
            fontSize: 12,
          ),
        ),
        Text(
          body,
          style: const TextStyle(
            color: Color.fromRGBO(130, 125, 125, 1),
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
