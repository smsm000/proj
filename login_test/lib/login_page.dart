import 'package:flutter/material.dart';
import 'package:login_test/forgot_password_page.dart';
import 'package:login_test/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordShown = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Login Test Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/flower-purple-lical-blosso.jpeg",
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
            child: TextField(
              controller: userNameController,
              decoration: InputDecoration(
                hintText: "username",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: InkWell(
                  child: const Icon(Icons.close),
                  onTap: () {
                    userNameController.clear();
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
            child: TextField(
              controller: passwordController,
              obscureText: passwordShown,
              decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: SizedBox(
                    width: 60,
                    child: Row(
                      children: [
                        InkWell(
                          child: const Icon(Icons.close),
                          onTap: () {
                            passwordController.text = "";
                          },
                        ),
                        InkWell(
                          child: const Icon(Icons.remove_red_eye),
                          onTap: () {
                            passwordShown = !passwordShown;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              if (userNameController.text.isEmpty ||
                  passwordController.text.isEmpty) {
                // lama ykoon al 2 field empty
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("empty field"),
                ));
                // } else if (userNameController.text.isEmpty) {
                //   // lama ykoon al username field empty

                //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                //     content: Text("you have to fill username"),
                //   ));
                // } else if (passwordController.text.isEmpty) {
                //   // lama ykoon al password field empty

                //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                //     content: Text("you have to fill password"),
                //   ));
              } else {
                // lama ykoon al username w al password filled

                // print(userNameController.text);
                // print(passwordController.text);

                if (userNameController.text != "abed") {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("wrong username"),
                  ));
                } else if (passwordController.text != "123") {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("wrong password"),
                  ));
                } else if (userNameController.text == "abed" &&
                    passwordController.text == "123") {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  //   return const MainPage();
                  // }));

                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (ctx) {
                    return const MainPage();
                  }), (route) => false);
                }
              }
            },
            child: const Text("login", style: TextStyle(color: Colors.red)),
          ),
          const SizedBox(height: 30),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const ForgotPasswordPage();
                }));
              },
              child: const Text("Forgot Password")),
        ],
      ),
    );
  }
}
