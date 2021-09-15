import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
typedef SwitchPasswordText = void Function();

// ignore: must_be_immutable
class MyFormInput extends StatefulWidget {
  String inputLabel;
  String hintText;
  TextInputType textInputType;
  int? maxLines;
  int? minLines;
  bool obscureText;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  FormFieldValidator<String>? validator;
  ValueChanged<String>? onChanged;
  GestureTapCallback? onTap;
  TextInputAction textInputAction;
  bool hideSuffixIcon;
  bool isError;
  String errorText;
  bool autoFocus;
  bool readonly;
  bool hasInkWell;
  MyFormInput({
    Key? key,
    required this.inputLabel,
    required this.hintText,
    this.readonly = false,
    this.hasInkWell = false,
    this.autoFocus = false,
    this.isError = false,
    this.minLines = null,
    this.maxLines = null,
    this.errorText = "",
    this.focusNode,
    this.textEditingController,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.go,
    this.obscureText = false,
    this.hideSuffixIcon = true,
    this.validator,
    this.onTap,
    this.onChanged,
  }) : super(key: key);

  @override
  _MyFormInputState createState() => _MyFormInputState();
}

class _MyFormInputState extends State<MyFormInput> {

  bool _obscureText = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.widget.inputLabel,
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: widget.isError ?
              Theme.of(context).errorColor :
              Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Material(
            child: Ink(
              child: InkWell(
                onTap: this.widget.hasInkWell ? () {}: null,
                child: Container(
                  margin: EdgeInsets.only(left: 5),
                  child: TextFormField(
                    obscureText: this._obscureText,
                    autofocus: widget.autoFocus,
                    readOnly: widget.readonly,
                    controller: this.widget.textEditingController,
                    focusNode: this.widget.focusNode,
                    validator: this.widget.validator,
                    onChanged: this.widget.onChanged ?? (value) {},
                    keyboardType: this.widget.textInputType,
                    textInputAction: this.widget.textInputAction,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      hintText: this.widget.hintText,
                      // errorText: this.widget.errorText,
                      border: InputBorder.none,
                      // errorBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: Theme.of(context).errorColor,
                      //     width: 2,
                      //   ),
                      //   borderRadius: BorderRadius.circular(5),
                      // ),
                      // focusedErrorBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: Theme.of(context).errorColor,
                      //     width: 2,
                      //   ),
                      //   borderRadius: BorderRadius.circular(5),
                      // ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: widget.isError ?
                          Theme.of(context).errorColor :
                          Theme.of(context).dividerColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:  widget.isError ?
                          Theme.of(context).errorColor :
                          Theme.of(context).dividerColor,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      suffix: !widget.hideSuffixIcon ?
                      Material(
                        shape: CircleBorder(),
                        clipBehavior: Clip.hardEdge,
                        child: Ink(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child:  InkWell(
                              onTap: () {
                                setState(() {
                                  this._obscureText = !this._obscureText;
                                  print(this._obscureText);
                                });

                              },
                              child: Container(
                                padding: EdgeInsets.all(8),
                                child: AnimatedSwitcher(
                                  duration: Duration(milliseconds: 500),
                                  transitionBuilder: (Widget child, Animation<double> animation) {
                                    return ScaleTransition(child: child, scale: animation);
                                  },
                                  child: Icon(
                                    this._obscureText? Icons.lock : Icons.text_fields,
                                    key: ValueKey<bool>(_obscureText),
                                  ),
                                ),
                              ),
                            )
                        ),
                      ) : null,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            child: widget.isError ? Text(
              widget.errorText,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Colors.red,
              ),
            ) : null,
          )
        ],
      ),
    );
  }



}

