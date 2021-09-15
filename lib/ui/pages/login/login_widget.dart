import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class MyLoginWidgets extends StatelessWidget {
  const MyLoginWidgets({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignInButton(
            padding: 15,
            buttonType: ButtonType.google,
            buttonSize: ButtonSize.large,
            width: 350,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: () {
                print('click');
            }
          ),
          SizedBox(
            height: 15,
          ),
          SignInButton(
            padding: 15,
            buttonType: ButtonType.facebook,
            buttonSize: ButtonSize.large,
            width: 350,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: () {
                print('click');
            }
          ),
          SizedBox(
            height: 15,
          ),
          SignInButton(
            padding: 15,
            buttonType: ButtonType.mail,
            buttonSize: ButtonSize.large,
            width: 350,
            btnText: "Sign in with Mail or Phone",
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/login-signup');
            }
          )
        ],
      ),
    );
  }
}
