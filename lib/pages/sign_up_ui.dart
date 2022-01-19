import 'package:flutter/material.dart';

class SignUpUiPage extends StatefulWidget {
  const SignUpUiPage({Key? key}) : super(key: key);
  static const String id = "sign_up_ui_page";

  @override
  _SignUpUiPageState createState() => _SignUpUiPageState();
}

class _SignUpUiPageState extends State<SignUpUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.black87,
            Colors.black54,
            Colors.black26,
            Colors.black12,
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, bottom: 10),
              child: const Text(
                "Sign Up",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20),
              child: const Text(
                "Welcome",
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
                      padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
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
                                      color: Color.fromRGBO(171, 171, 171, 0.7),
                                      blurRadius: 20,
                                      offset: Offset(0, 10)),
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Fullname",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                        BorderSide(color: Colors.grey.shade200)),
                                  ),
                                ),
                                Container(
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                        BorderSide(color: Colors.grey.shade200)),
                                  ),
                                ),
                                Container(
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Phone",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                        BorderSide(color: Colors.grey.shade200)),
                                  ),
                                ),
                                Container(
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                        BorderSide(color: Colors.grey.shade200)),
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
                                "SignUp",
                                style: TextStyle(color: Colors.white, fontSize: 16),
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
                            child: const Text(
                              "Sign Up with SNS",
                              style: TextStyle(
                                  color: Colors.grey, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 40),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      margin: const EdgeInsets.symmetric(horizontal: 5),
                                      child: MaterialButton(
                                        child: const Text("Facebook", style: TextStyle(color: Colors.white),),
                                        onPressed: () {},
                                        color: Colors.blue,
                                        shape: const StadiumBorder(),
                                      ),
                                    )),
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      margin: const EdgeInsets.symmetric(horizontal: 5),
                                      child: MaterialButton(
                                        child: const Text("Google", style: TextStyle(color: Colors.white),),
                                        onPressed: () {},
                                        color: Colors.red,
                                        shape: const StadiumBorder(),
                                      ),
                                    )),
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      margin: const EdgeInsets.symmetric(horizontal: 5),
                                      child: MaterialButton(
                                        child: const Text("Apple", style: TextStyle(color: Colors.white),),
                                        onPressed: () {},
                                        color: Colors.black,
                                        shape: const StadiumBorder(),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                )),
          ],
        ),
      ),
    );
  }
}
