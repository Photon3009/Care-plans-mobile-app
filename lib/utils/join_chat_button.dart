import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JoinChatButton extends StatelessWidget {
  JoinChatButton({Key? key, this.title}) : super(key: key);

  String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //later to do
      },
      child: Container(
        height: 50,
        width: 220,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(18, 140, 126, 1),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              title ?? '',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
