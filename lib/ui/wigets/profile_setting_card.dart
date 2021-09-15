import 'package:flutter/material.dart';

class ProfileSettingCard extends StatelessWidget {
  final String cardTitle;
  final List<Map<String, dynamic>> optionList;
  final IconData icon;
  const ProfileSettingCard({
    Key? key,
    required this.cardTitle,
    required this.optionList,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children:[
        SizedBox(
          height: 20,
        ),
        Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                this.cardTitle,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10,),
            ...optionList.map((option) => Material(
                child: Ink(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {
                      print(optionList.length);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                      decoration: BoxDecoration(
                          border: option["index"] != optionList.length ?
                          Border(
                              bottom: BorderSide(
                                width: 0.5,
                                color: Theme.of(context).dividerColor,
                              )
                          ) : null,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            option["listTitle"],
                            style: Theme.of(context).textTheme.headline3!.copyWith(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          option.containsKey("listText") ?
                          Row(
                            children: [
                              Text("English", style: Theme.of(context).textTheme.headline2,),
                              SizedBox(width: 20,),
                              Icon(this.icon, size: 35, color: Colors.black,),
                            ],
                          ):
                          Icon(this.icon, size: 25, color: Colors.black,),
                        ],
                      ),
                    ),
                  ),
                )
            ))
          ],
        ),
      ),
        SizedBox(height: 20,),
      ],
    );
  }
}
