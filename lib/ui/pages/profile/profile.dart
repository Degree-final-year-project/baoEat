
import 'package:find_food_app/ui/pages/profile/init_setting.dart';
import 'package:find_food_app/ui/wigets/profile_card.dart';
import 'package:find_food_app/ui/wigets/profile_setting_card.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileCard(),
                ...settingConfigList.map((config) => ProfileSettingCard(
                    cardTitle: config["title"],
                    optionList: config["settingList"],
                    icon: config["icon"],
                )),
                Material(
                  child: Ink(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sign Out",
                              style: Theme.of(context).textTheme.headline3!.copyWith(
                                fontWeight: FontWeight.normal,
                                color: Colors.red,
                              )
                            ),
                            Icon(Icons.logout, size: 30, color: Colors.red,),
                          ],
                        ),
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
