import 'package:flutter/material.dart';

import 'customicon.dart';
import 'custominputfield.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

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
              child: Text("Register",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  )),
            ),
          ),
          Positioned(
            top: 120,
            child: Container(
              height: size.height - 50,
              width: size.width * 1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(65),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Custominputfield(
                    hintText: "First Name",
                    prefixIcon: Icons.abc_sharp,
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 15),
                  Custominputfield(
                    hintText: "Last Name",
                    prefixIcon: Icons.abc,
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 15),
                  Custominputfield(
                    hintText: "Email Address",
                    prefixIcon: Icons.mail,
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 15),
                  Custominputfield(
                    hintText: "Password",
                    prefixIcon: Icons.password,
                    suffixIcon: Icons.visibility,
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 15),
                  Custominputfield(
                    hintText: "Confirm Password",
                    prefixIcon: Icons.password,
                    suffixIcon: Icons.visibility_off,
                    controller: TextEditingController(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("By signing you agree to all our terms"),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      )),
                      onPressed: () {},
                      child: const Text(
                        "Signup",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text(
                      "Already have an account?",
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
                          "Login",
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
