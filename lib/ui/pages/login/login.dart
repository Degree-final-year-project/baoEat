import 'package:find_food_app/ui/pages/login/login_widget.dart';
import 'package:flutter/material.dart';

class MyLoginScreen extends StatefulWidget {
  static final String routeName = '/select-login';
  const MyLoginScreen({Key? key}) : super(key: key);

  @override
  _MyLoginScreenState createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
       clipBehavior: Clip.antiAlias,
       children: [
         SizedBox.expand(
           child: FittedBox(
             fit: BoxFit.cover,
             child: Opacity(
               opacity: 0.7,
               child: Image(
                 image:AssetImage('assets/images/login_image.jpg'),
               ),
             ),
           ),
         ),
         MyLoginWidgets(),
         Positioned(
           right: 15,
           bottom: 15,
           child: TextButton(
             onPressed: () {
               print('test');
               Navigator.of(context).pushNamed('/');
             },
             child: Text(
               "SKIP",
               style: Theme.of(context).textTheme.headline2!.copyWith(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.black87,
               ),
             ),
           ),
         )
       ],
    );
  }
}


