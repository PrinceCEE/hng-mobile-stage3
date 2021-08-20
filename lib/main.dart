import 'package:flutter/material.dart';
import 'package:print_back/repository/user_arguments.dart';
import 'package:print_back/screens/user_screen.dart';
import 'package:print_back/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Print Back',
      home: WelcomeScreen(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case WelcomeScreen.screenName:
            return MaterialPageRoute(
              builder: (_) => WelcomeScreen(),
            );
          case UserScreen.screenName:
            return MaterialPageRoute(
              builder: (_) {
                var args = settings.arguments as UserArgument;
                return UserScreen(
                  firstname: args.firstname,
                  lastname: args.lastname,
                  email: args.email,
                  institution: args.institution,
                  course: args.course,
                );
              },
            );
        }
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
