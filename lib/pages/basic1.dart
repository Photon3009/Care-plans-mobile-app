import 'package:care_plans/const.dart';
import 'package:flutter/material.dart';

import '../theme/style.dart';

class Basic1Page extends StatefulWidget {
  const Basic1Page({Key? key}) : super(key: key);

  @override
  State<Basic1Page> createState() => _Basic1PageState();
}

class _Basic1PageState extends State<Basic1Page> {
  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Basic Care",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                leading: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                title: Text('Pediatric care in 15 minutes'),
              ),
              const ListTile(
                leading: Icon(Icons.check, color: Colors.green),
                title: Text('Instant chat with pediatricians on WhatsApp'),
              ),
              const ListTile(
                leading: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                title: Text('Free pediatrician consultations (day)'),
              ),
              const ListTile(
                leading: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                title: Text('Live Yoga Sessions'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        _flag ? '\u{20B9}999' : '\u{20B9}2499',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        _flag ? 'Per Month' : 'Per 3 Month',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () => setState(() => _flag = !_flag),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: _flag
                                  ? apnaColor
                                  : const Color.fromRGBO(58, 129, 245, 1)),
                          child: const Text(
                            '1 Month',
                            style: TextStyle(color: Colors.white),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          onPressed: () => setState(() => _flag = !_flag),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: _flag
                                  ? const Color.fromRGBO(58, 129, 245, 1)
                                  : apnaColor),
                          child: const Text(
                            '3 Month',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, PageConst.thankyouPage, (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(58, 129, 245, 1),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20)))),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
            ])),
      ),
    );
  }
}
