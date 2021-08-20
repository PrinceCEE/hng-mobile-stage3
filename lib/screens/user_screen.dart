import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  static const String screenName = "user_screen";

  const UserScreen({
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.institution,
    required this.course,
  });

  final String firstname;
  final String lastname;
  final String email;
  final String institution;
  final String course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "$firstname $lastname",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black54,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 120,
                  ),
                  backgroundColor: Colors.blue,
                  radius: 80,
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Info(value: firstname),
                    Info(value: lastname),
                    Info(value: email),
                    Info(value: institution),
                    Info(value: course),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          value,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
