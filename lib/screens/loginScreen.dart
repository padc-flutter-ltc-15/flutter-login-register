
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Hello",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        /*title: Center(
          child: Image.asset(
            'assets/images/logo.png',
            width: 120,
            height: 40,
          ),
        ),*/
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
        leading: const Icon(
          Icons.chevron_left,
          size: 32,
        ),
        actions: const [
          Icon(
            Icons.abc,
            size: 32,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16
        ),
        color: const Color.fromRGBO(19, 19, 19, 1.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                    hintText: "Email",
                    hintStyle: TextStyle(
                        color: Colors.white
                    )
                ),
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.white
                    )
                ),
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: printLogin,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: printLogin,
                child: Text(
                  "Recover password",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void printLogin() {
  print("Login");
}