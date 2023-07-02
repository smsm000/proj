import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Forgot Password"),
      ),
      body: Column(
        children: [
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
          IconButton(
            onPressed: () {
              if (userNameController.text != "abed") {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("wrong username"),
                ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Password == 123"),
                ));
              }
            },
            icon: const Text("Submit"),
          )
        ],
      ),
    );
  }
}
