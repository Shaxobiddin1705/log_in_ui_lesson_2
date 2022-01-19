import 'package:flutter/material.dart';
import 'package:log_in_ui_lesson_2/pages/sign_in_ui.dart';
import 'package:log_in_ui_lesson_2/pages/sign_up_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInUiPage(),
      routes: {
        SignInUiPage.id: (context) => const SignInUiPage(),
        SignUpUiPage.id: (context) => const SignUpUiPage(),
      },
    );
  }
}