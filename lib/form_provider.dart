import 'package:flutter/material.dart';

class FormProvider extends ChangeNotifier {
  String _firstname = "";
  String _lastname = "";
  String _email = "";
  String _institution = "";
  String _course = "";

  String get firstname => _firstname;
  String get lastname => _lastname;
  String get email => _email;
  String get institution => _institution;
  String get course => _course;

  void setFields({
    required String firstname,
    required String lastname,
    required String email,
    required String institution,
    required String course,
  }) {
    _firstname = firstname;
    _lastname = lastname;
    _email = email;
    _institution = institution;
    _course = course;
  }

  bool canSubmit() {
    return _firstname.isNotEmpty &&
        _lastname.isNotEmpty &&
        _email.isNotEmpty &&
        _institution.isNotEmpty &&
        _course.isNotEmpty;
  }
}
