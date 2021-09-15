import 'package:find_food_app/ui/shared/widget/custom_button.dart';
import 'package:find_food_app/ui/shared/widget/form_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class MyForgetPasswordScreen extends StatefulWidget {
  static final String routeName ='/forget-password';
  const MyForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _MyForgetPasswordScreenState createState() => _MyForgetPasswordScreenState();
}

class _MyForgetPasswordScreenState extends State<MyForgetPasswordScreen> {

  TextEditingController _emailTextEditController = TextEditingController();
  FocusNode _emailFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          print('tap');
          setState(() {
            this._emailFocusNode.unfocus();
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
                          "Enter the email address you used to sign up.",
                          style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: MyFormInput(
                                  inputLabel: "Email address",
                                  hintText: "Email address",
                                  textInputType: TextInputType.emailAddress,
                                ),
                              ),
                              MyCustomButton(
                                textColor: Colors.white,
                                buttonContent: "Send Email",
                                backgroundColor:  Theme.of(context).primaryColor,
                                borderColor: Theme.of(context).primaryColor,
                                onTap: () {}
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "We'll send you a password reset email",
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
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
}
