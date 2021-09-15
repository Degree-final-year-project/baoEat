import 'package:find_food_app/ui/shared/widget/custom_button.dart';
import 'package:find_food_app/ui/shared/widget/form_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';
// ignore: must_be_immutable
class MyEmailLoginForm extends StatefulWidget {
  //text controller
  TextEditingController emailTextController;
  TextEditingController passwordTextController;

  //focus node
  FocusNode emailFocusNode;
  FocusNode passwordFocusNode;


  MyEmailLoginForm({
    Key? key,
    required this.emailTextController,
    required this.passwordTextController,
    required this.emailFocusNode,
    required this.passwordFocusNode,
  }) : super(key: key);

  @override
  _MyEmailLoginFormState createState() => _MyEmailLoginFormState();
}

class _MyEmailLoginFormState extends State<MyEmailLoginForm> {

  final _formKey = GlobalKey<FormState>();
  late bool _emailFormatIsError;
  late String _emailErrorMsg;
  late  bool _passwordFormatIsError;
  late String _passowrdErrorMsg;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailFormatIsError = false;
    _emailErrorMsg = "";
    _passwordFormatIsError = false;
    _passowrdErrorMsg = "";
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyFormInput(
            inputLabel: "Email address",
            hintText: "Email address",
            isError: _emailFormatIsError,
            errorText: _emailErrorMsg,
            textInputType: TextInputType.emailAddress,
            textEditingController: widget.emailTextController,
            focusNode: widget.emailFocusNode,

          ),
          MyFormInput(
            inputLabel: "Password",
            hintText: "Password",
            obscureText: true,
            hideSuffixIcon: false,
            isError: _passwordFormatIsError,
            errorText: _passowrdErrorMsg,
            textInputType: TextInputType.visiblePassword,
            textEditingController: widget.passwordTextController,
            focusNode: widget.passwordFocusNode,
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8, top: 10, left: 5),
            child: GestureDetector(
              onTap: () {
                print('forget');
                Navigator.of(context).pushNamed('/forget-password');
              },
              child: Text(
                "Forget Password?",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          MyCustomButton(
            textColor: Colors.white,
            buttonContent: "Sign In",
            backgroundColor: Theme.of(context).primaryColor,
            borderColor: Theme.of(context).primaryColor,
            onTap: () {
              var emailValue = widget.emailTextController.text.toString();
              var passValue = widget.passwordTextController.text.toString();
              if(!isEmail(emailValue) || emailValue.isEmpty) {
                setState(() {
                  _emailErrorMsg = "invalid email format";
                  _emailFormatIsError = true;
                });
              } else {
                setState(() {
                  _emailErrorMsg = "";
                  _emailFormatIsError = false;
                });
              }

              if(passValue.isEmpty) {
                setState(() {
                  _passowrdErrorMsg = "invalid password format";
                  _passwordFormatIsError = true;
                });
              } else {
                setState(() {
                  _passowrdErrorMsg = "";
                  _passwordFormatIsError = false;
                });
              }

              if(!_emailFormatIsError && !_passwordFormatIsError) {
                print('submit');
              }
            },
          ),
          SizedBox(
            height: 15,
          ),
          MyCustomButton(
            textColor: Theme.of(context).primaryColor,
            buttonContent: "Sign Up",
            backgroundColor: Colors.white,
            borderColor: Theme.of(context).primaryColor,
            onTap: () {
              Navigator.of(context).pushNamed('/register');
            },
          ),
        ],
      ),
    );
  }
}

