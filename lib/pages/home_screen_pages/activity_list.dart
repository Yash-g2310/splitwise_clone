import 'package:flutter/material.dart';
import 'package:spltwise_clone/global_data.dart';
import 'package:spltwise_clone/pages/utils/give_status.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: actionPerformed.length,
      itemBuilder: (context, index) {
        final action = actionPerformed[index];
        Color giveColor() {
          return action['action'] == 'pay money'
              ? const Color.fromRGBO(6, 154, 3, 1)
              : const Color.fromRGBO(231, 2, 2, 1);
        }

        Widget giveIcon() {
          if ((action['action'] as String) == 'pay money') {
            return Text(
              (action['head'] as String).substring(20, 21),
              style: TextStyle(
                color: giveColor(),
                fontSize: 30,
              ),
            );
          } else if ((action['action'] as String) == 'owe money') {
            return Text(
              (action['head'] as String).substring(0, 1),
              style: TextStyle(
                color: giveColor(),
                fontSize: 30,
              ),
            );
          } else if ((action['action'] as String).contains('create')) {
            return Image.asset(
              'assets/images/createGroup.png',
              width: 30,
              height: 30,
            );
          } else if ((action['action'] as String).contains('expense')) {
            return Image.asset(
              'assets/images/addExpense.png',
              width: 30,
              height: 30,
            );
          } else {
            return Image.asset(
              'assets/images/addtoGroup.png',
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
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(236, 236, 236, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: giveIcon(),
                  ),
                ),
                const SizedBox(width: 15),
                GiveStatus(head: action['head'], body: action['body']),
                const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
