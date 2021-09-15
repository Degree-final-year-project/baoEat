import 'package:flutter/material.dart';
List<Map< String, dynamic>> settingConfigList = [
  {
    "title": "Account",
    "icon": Icons.north_east,
    "settingList": <Map<String, dynamic>>[
      {
        "index": 1,
        "listTitle": "Favorite",
      },
      {
        "index": 2,
        "listTitle": "My List",
      },
      {
        "index": 3,
        "listTitle": "Bookmark",
      },
      {
        "index": 4,
        "listTitle": "Restaurant added by me",
      },
    ]
  },
  {
    "title": "Preferences",
    "icon": Icons.chevron_right,
    "settingList": <Map<String, dynamic>>[
      {
        "index": 1,
        "listTitle": "Languages",
        "listText": "English",

      }
    ]
  }
];