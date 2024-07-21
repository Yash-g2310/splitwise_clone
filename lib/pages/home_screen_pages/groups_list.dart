import 'package:flutter/material.dart';
import 'package:spltwise_clone/global_data.dart';
import 'package:spltwise_clone/pages/utils/give_money.dart';
import 'package:spltwise_clone/pages/utils/give_status.dart';

class GroupsList extends StatelessWidget {
  const GroupsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: activities.length,
      itemBuilder: (context, index) {
        final activity = activities[index];

        Image giveIcon() {
          if ((activity['activity'] as String).contains('Trip')) {
            return Image.asset(
              'assets/images/trip.png',
              // scale: 10,
              width: 30,
              height: 30,
            );
          } else if ((activity['activity'] as String).contains('Movie')) {
            return Image.asset(
              'assets/images/movie.png',
              width: 30,
              height: 30,
            );
          } else if ((activity['activity'] as String).contains('Dinner')) {
            return Image.asset(
              'assets/images/food.png',
              width: 30,
              height: 30,
            );
          } else {
            return Image.asset(
              'assets/images/expenses.png',
              width: 30,
              height: 30,
            );
          }
        }

        return Container(
          margin: const EdgeInsets.fromLTRB(15, 2, 25, 15),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.18), blurRadius: 2)
              ]),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color:
                          (activity['desc'] as String).substring(0, 3) != 'You'
                              ? const Color.fromRGBO(6, 154, 3, 1)
                              : const Color.fromRGBO(231, 2, 2, 1),
                    ),
                  ),
                  child: Center(
                    child: giveIcon(),
                  ),
                ),
                const SizedBox(width: 15),
                GiveStatus(head: activity['activity'], body: activity['desc']),
                const Spacer(),
                GiveMoney(value: activity['money'])
              ],
            ),
          ),
        );
      },
    );
  }
}
