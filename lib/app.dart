import 'package:flutter/material.dart';
import 'package:not_insta/screens/home/home.dart';

const HomeRoute = "/";
const MessageRoute = "/message";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case HomeRoute:
          screen = Home();
          break;
        // case MessageRoute:
        //   screen = MessageRoute(arguments["id"]);
        //   break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
