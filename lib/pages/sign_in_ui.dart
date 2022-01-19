import 'package:flutter/material.dart';
import 'package:hashtagable/hashtagable.dart';
import 'package:log_in_ui_lesson_2/pages/sign_up_ui.dart';

class SignInUiPage extends StatefulWidget {
  const SignInUiPage({Key? key}) : super(key: key);
  static const String id = "sign_in_ui_page";

  @override
  _SignInUiPageState createState() => _SignInUiPageState();
}

class _SignInUiPageState extends State<SignInUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_image_2.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: const Text(
                "Sign In",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    child: SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 35),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromRGBO(171, 171, 171, 0.7),
                                        blurRadius: 20,
                                        offset: Offset(0, 10)),
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: "Email",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey.shade200)),
                                    ),
                                  ),
                                  Container(
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey.shade200)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: 40,
                              child: MaterialButton(
                                onPressed: () {},
                                child: const Text(
                                  "SignIn",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                color: Colors.black45,
                                minWidth: 200,
                                shape: const StadiumBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: RichText(
                                  text: const TextSpan(
                                      text: "Sign In",
                                      style: TextStyle(color: Colors.blue),
                                      children: [
                                        TextSpan(
                                            text: " with",
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        TextSpan(
                                            text: " SNS",
                                            style:
                                                TextStyle(color: Colors.grey))
                                      ]),
                                )),
                            Container(
                              padding: const EdgeInsets.only(top: 40),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    height: 45,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: MaterialButton(
                                      child: const Text(
                                        "Facebook",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {},
                                      color: Colors.blue,
                                      shape: const StadiumBorder(),
                                    ),
                                  )),
                                  Expanded(
                                      child: Container(
                                    height: 45,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: MaterialButton(
                                      child: const Text(
                                        "Github",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {},
                                      color: Colors.black,
                                      shape: const StadiumBorder(),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            HashTag("#Welcome to our #SignIn page"),
                          ],
                        ),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }

  Widget HashTag(String str) {
    return HashTagText(
        text: str,
        basicStyle: const TextStyle(color: Colors.black, fontSize: 18),
        decoratedStyle: const TextStyle(color: Colors.blue, fontSize: 18),
      decorateAtSign: true,
      onTap: (text) {
         Navigator.pushNamed(context, SignUpUiPage.id);
      },
    );
  }
}
