import 'package:flutter/material.dart';
import 'package:smart_shopping/components/my_button.dart';
import 'package:smart_shopping/components/my_text_field.dart';
import 'dart:developer';

class MyHome extends StatelessWidget {
  MyHome({super.key});

  //Text Controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 215, 0, 100),
      body: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(255, 215, 0, 100),
            centerTitle: true,
            title: const Text(
              "SMART - SHOPPING",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                //Logo
                Center(
                  child: Image.asset(
                    "lib/images/logo3.png",
                    scale: 1.0,
                    height: 100.0,
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                //Welcome Note Started
                const Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Welcome to,",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      "SMART Shopping - Grab your needs easily!",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ), //Welcome Note End
                const SizedBox(
                  height: 30.0,
                ),
                //Username
                MyTextField(
                  controller: usernameController,
                  hintText: "Email ID",
                  obsecureText: false,
                ),
                //
                const SizedBox(
                  height: 10.0,
                ),
                //
                //Password
                MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obsecureText: true,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),

                //Sign In Button
                MyButton(
                  onTap: UserSignIn,
                ),

                //Divider
                //
                //
                //
              ],
            ),
          ),
        ),
      ),
    );
  }

  //sign in method
  void UserSignIn() {
    log('User clicked SIGN IN button');
  }
}
