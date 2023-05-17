import 'package:care_plans/const.dart';
import 'package:care_plans/theme/style.dart';
import 'package:flutter/material.dart';

class Holistic1Page extends StatefulWidget {
  const Holistic1Page({Key? key}) : super(key: key);

  @override
  State<Holistic1Page> createState() => _Holistic1PageState();
}

class _Holistic1PageState extends State<Holistic1Page> {
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
                "Holistic Care",
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
                title: Text(
                    'Dedicated pediatrician for your baby, personal care plan, Best possible baby care'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // const SizedBox(width: 15,),
                  Column(
                    children: [
                      Text(
                        _flag ? '\u{20B9}3998' : '\u{20B9}9999',
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
