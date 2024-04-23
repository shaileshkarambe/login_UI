import 'package:flutter/material.dart';
import 'package:login_page/form.dart';

import 'package:login_page/register_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/logo/login.png"),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            " Team work all",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            " Login to create your work",
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => SignIN()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 60),
                      elevation: 5,
                      shadowColor: Colors.grey,
                      backgroundColor: Colors.black,
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Login")),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const RegisterPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 60),
                      elevation: 5,
                      shadowColor: Colors.grey,
                      backgroundColor: Colors.deepPurpleAccent,
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Register"))
            ],
          )
        ],
      ),
    );
  }
}
