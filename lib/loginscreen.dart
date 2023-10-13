import 'package:flutter/material.dart';
import 'package:flutter_application_1/signupscreen.dart';

import 'customicon.dart';
import 'custominputfield.dart';
import './signupscreen.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/leaf-arrangement.jpg',
            height: size.height * 1,
            width: size.width * 1,
            fit: BoxFit.cover,
          ),
          const Positioned(
            top: 10,
            left: 10,
            child: CustomiconWidget(),
          ),
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'images/logo.jpg',
                height: 120,
                width: 50,
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: Container(
              height: size.height - 200,
              width: size.width * 1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Text("Welcome back",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  const SizedBox(height: 10),
                  Text("login to your account",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      )),
                  SizedBox(height: 20),
                  Custominputfield(
                    hintText: "Username/Email",
                    prefixIcon: Icons.mail,
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 20),
                  Custominputfield(
                    hintText: "Password",
                    prefixIcon: Icons.password,
                    suffixIcon: Icons.visibility_off,
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 20),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Signupscreen();
                          print("Signup pressed");
                        },
                        child: const Text(
                          "Signup",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
