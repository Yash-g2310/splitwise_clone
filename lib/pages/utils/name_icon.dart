import 'package:flutter/material.dart';

class NameIcon extends StatelessWidget {
  const NameIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(6, 154, 3, 1),
                Color.fromRGBO(231, 2, 2, 1)
              ],
              stops: [0.5, 0.5],
            ),
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          width: 62,
          height: 62,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31),
            color: Colors.white,
          ),
          child: const Center(
            child: Text(
              'M',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 36,
                color: Color.fromRGBO(76, 187, 155, 1),
              ),
            ),
          ),
        )
      ],
    );
  }
}
