import 'package:care_plans/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeButton extends StatelessWidget {
  HomeButton({Key? key, this.title}) : super(key: key);

  String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(
            context, PageConst.firstPage, (route) => false);
      },
      child: Container(
        height: 50,
        width: 220,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(58, 129, 245, 1),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
          child: Text(
            title ?? '',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
