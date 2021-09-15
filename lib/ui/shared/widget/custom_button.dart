import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final Color textColor;
  final String buttonContent;
  final Color backgroundColor;
  final Color borderColor;
  VoidCallback? onTap;
   MyCustomButton({
    Key? key,
    required this.textColor,
    required this.buttonContent,
    required this.backgroundColor,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            side: MaterialStateProperty.all<BorderSide>(
              BorderSide(
                color: this.borderColor,
              )
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 20),
            ),
            backgroundColor:MaterialStateProperty.all<Color>(
              this.backgroundColor,
            ),
            shape: MaterialStateProperty.all<StadiumBorder>(
              StadiumBorder(),
            ),
          ),
          onPressed: this.onTap, child: Text(
          this.buttonContent,
          style: Theme.of(context).textTheme.headline3!.copyWith(
            color: this.textColor,
          ),
      )
      ),
    );
  }
}
