import 'package:flutter/material.dart';
import 'package:print_back/form_provider.dart';
import 'package:print_back/repository/user_arguments.dart';
import 'package:print_back/screens/user_screen.dart';
import 'package:provider/provider.dart';
import 'package:print_back/components/input.dart';

class CustomForm extends StatelessWidget {
  final firstnameController = TextEditingController(),
      lastnameController = TextEditingController(),
      emailController = TextEditingController(),
      instController = TextEditingController(),
      courseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FormProvider>(
      create: (_) => FormProvider(),
      child: Builder(
        builder: (context) {
          return Container(
            child: Column(
              children: [
                Input(
                  hintText: "First name",
                  controller: firstnameController,
                ),
                SizedBox(height: 10),
                Input(
                  hintText: "Last name",
                  controller: lastnameController,
                ),
                SizedBox(height: 10),
                Input(
                  hintText: "Email",
                  controller: emailController,
                ),
                SizedBox(height: 10),
                Input(
                  hintText: "Institution",
                  controller: instController,
                ),
                SizedBox(height: 10),
                Input(
                  hintText: "Course of study",
                  controller: courseController,
                ),
                SizedBox(height: 40),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    width: MediaQuery.of(context).size.width,
                    height: 48,
                  ),
                  child: Consumer<FormProvider>(
                    builder: (context, provider, child) {
                      return ElevatedButton(
                        onPressed: () {
                          var firstname = firstnameController.text.trim(),
                              lastname = lastnameController.text.trim(),
                              email = emailController.text.trim(),
                              institution = instController.text.trim(),
                              course = courseController.text.trim();

                          // update the fields on the provider
                          provider.setFields(
                            firstname: firstname,
                            lastname: lastname,
                            email: email,
                            institution: institution,
                            course: course,
                          );
                          var canSubmit = provider.canSubmit();

                          if (canSubmit) {
                            Navigator.pushNamed(
                              context,
                              UserScreen.screenName,
                              arguments: UserArgument(
                                firstname: firstname,
                                lastname: lastname,
                                email: email,
                                institution: institution,
                                course: course,
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(fontSize: 24),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
