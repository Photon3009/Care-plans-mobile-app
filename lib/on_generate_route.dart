import 'package:care_plans/const.dart';
import 'package:flutter/material.dart';

import 'pages/first_page.dart';
import 'pages/thankyou_page.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        {
          return materialBuilder(widget: const FirstPage());
        }
      case PageConst.thankyouPage:
        {
          return materialBuilder(widget: const ThankYouPage());
        }
      case PageConst.firstPage:
        {
          return materialBuilder(widget: const FirstPage());
        }
      default:
        return materialBuilder(widget: const ErrorPage());
    }
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Error Page")),
      body: const Center(child: Text("Error Page")),
    );
  }
}
