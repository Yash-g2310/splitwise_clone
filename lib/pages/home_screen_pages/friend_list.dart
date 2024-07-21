import 'package:flutter/material.dart';
import 'package:spltwise_clone/global_data.dart';
import 'package:spltwise_clone/pages/utils/give_money.dart';
import 'package:spltwise_clone/pages/utils/give_status.dart';

class FriendList extends StatelessWidget {
  const FriendList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) {
        final friend = dummyData[index];

        Color giveColor() {
          return friend['status'] == 'owes you'
              ? const Color.fromRGBO(6, 154, 3, 1)
              : const Color.fromRGBO(231, 2, 2, 1);
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
                      color: giveColor(),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      (friend['name'] as String).substring(0, 1),
                      style: TextStyle(
                        color: giveColor(),
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                GiveStatus(head: friend['name'], body: friend['status']),
                const Spacer(),
                GiveMoney(value: friend['money']),
              ],
            ),
          ),
        );
      },
    );
  }
}
