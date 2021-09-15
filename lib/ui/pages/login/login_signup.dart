import 'package:find_food_app/ui/pages/login/email_login_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLoginSignupScreen extends StatefulWidget {
  static final String routeName = '/login-signup';
  const MyLoginSignupScreen({Key? key}) : super(key: key);

  @override
  _MyLoginSignupScreenState createState() => _MyLoginSignupScreenState();
}

class _MyLoginSignupScreenState extends State<MyLoginSignupScreen> {

  //text controller
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  //focus node
  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    this._disposeTextControllerAndFocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          print('tap');
          setState(() {
            _emailFocusNode.unfocus();
            _passwordFocusNode.unfocus();
          });
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only( bottom: 15),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back_ios, size: 25,)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back.",
                          style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        SingleChildScrollView(
                          child: MyEmailLoginForm(
                            emailFocusNode: this._emailFocusNode,
                            passwordFocusNode: this._passwordFocusNode,
                            emailTextController: this._emailTextController,
                            passwordTextController: this._passwordTextController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _disposeTextControllerAndFocusNode() {
    this._emailTextController.dispose();
    this._passwordTextController.dispose();
    this._passwordTextController.dispose();
    this._emailFocusNode.dispose();
  }

}
