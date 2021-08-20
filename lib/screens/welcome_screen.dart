import 'package:flutter/material.dart';
import 'package:print_back/components/form.dart';

class WelcomeScreen extends StatelessWidget {
  static const String screenName = "welcome_screen";

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Print Back",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black54,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Please,",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              Text(
                "Enter your details.",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10),
              CustomForm(),
            ],
          ),
        ),
      ),
    );
  }
}
