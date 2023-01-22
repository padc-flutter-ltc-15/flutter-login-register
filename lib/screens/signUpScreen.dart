import 'package:flutter/material.dart';
import 'package:flutterloginscreen/widgets/whiteTextInputWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: logoImage,
        ),
        backgroundColor: blackColor,
        //leading: leadingIcon,
        leading: const Center(
            child: Text(
          'Back',
          style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
          ),
        )),
        actions: tailingIcons,
      ),
      body: Container(
        padding: padding16,
        color: blackColor,
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "Create account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const WhiteTextInputWidget(
              hintName: "Name",
            ),
            const SizedBox(
              height: 16,
            ),
            const WhiteTextInputWidget(
              hintName: "Your email address",
            ),
            const SizedBox(
              height: 16,
            ),
            const WhiteTextInputWidget(
              hintName: "Create a password",
            ),
            const SizedBox(
              height: 8,
            ),
            warningText,
            const SizedBox(
              height: 16,
            ),
            createAccountButton,
            const SizedBox(
              height: 16,
            ),
            blahBlahText,
            const SizedBox(
              height: 8,
            ),
            alreadyHaveAnAccount,
            const SizedBox(
              height: 8,
            ),
            signInButton,
            const SizedBox(
              height: 32,
            ),
            copyRightText,
          ],
        ),
      ),
    );
  }
}

Image logoImage = Image.asset(
  'assets/images/logo.png',
  width: 120,
  height: 40,
);

const leadingIcon = Icon(
  Icons.chevron_left,
  size: 32,
);

const blackColor = Color.fromRGBO(0, 0, 0, 1.0);

const tailingIcons = [
  Icon(
    Icons.refresh,
    size: 32,
  )
];

const infoIcon = Icon(
  Icons.info_outline,
  color: Colors.blue,
  size: 16,
);

Align warningText = Align(
  alignment: AlignmentDirectional.topStart,
  child: Row(
    children: const [
      infoIcon,
      SizedBox(
        width: 8,
      ),
      Text(
        "Password must be at least 6 characters",
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      )
    ],
  ),
);

Align blahBlahText = const Align(
  alignment: AlignmentDirectional.topStart,
  child: Text(
    "By creating an account, you agree to the Prime Video Terms of Use and license agreements which can be found on the Amazon website",
    style: TextStyle(
      color: Colors.grey,
      fontSize: 14,
    ),
  ),
);

Align copyRightText = const Align(
  alignment: AlignmentDirectional.center,
  child: Text(
    "Amazon.com Inc",
    style: TextStyle(
      color: Colors.grey,
      fontSize: 14,
    ),
  ),
);

Align alreadyHaveAnAccount = const Align(
  alignment: AlignmentDirectional.center,
  child: Text(
    "Already have an account?",
    style: TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
  ),
);

SizedBox signInButton = SizedBox(
  width: double.infinity,
  height: 48,
  child: TextButton(
    onPressed: () {
      Fluttertoast.showToast(
          msg: "Clicked Sign-In now",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.black,
          fontSize: 16.0);
    },
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all(const Color.fromRGBO(69, 81, 99, 1.0)),
    ),
    child: const Text(
      "Sign-In now",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  ),
);

SizedBox createAccountButton = SizedBox(
  width: double.infinity,
  height: 48,
  child: TextButton(
    onPressed: () {
      Fluttertoast.showToast(
          msg: "Clicked Create Account",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue,
          textColor: Colors.black,
          fontSize: 16.0);
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.blue),
    ),
    child: const Text(
      "Create Your Amazon Account",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  ),
);

const padding16 = EdgeInsets.symmetric(horizontal: 16);
