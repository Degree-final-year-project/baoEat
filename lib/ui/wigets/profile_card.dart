import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(
        top: 40,
        left: 30,
        right: 30,
        bottom: 20,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Theme.of(context).dividerColor),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: CachedNetworkImage(
                      imageUrl: 'https://www.w3schools.com/howto/img_avatar.png',
                      placeholder: (_, url) => CircularProgressIndicator(),
                      errorWidget: (_, url, error) => Icon(
                        Icons.error_outline_rounded,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "John Cena",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(vertical: 8, horizontal: 15)
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor,
                  ),
                  overlayColor: MaterialStateProperty.resolveWith((states) {
                    return states.contains(MaterialState.pressed) ? Color.fromRGBO(
                        237, 237, 237, 1.0) : null;
                  }),
                  elevation: MaterialStateProperty.all<double>(0),
                  side: MaterialStateProperty.all<BorderSide>(
                      BorderSide(width: 1, color: Theme.of(context).dividerColor)
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                  )
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/edit-profile');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.edit,
                    size: 30,
                    color: Theme.of(context).dividerColor,
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Edit',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
