import 'package:find_food_app/ui/shared/widget/custom_button.dart';
import 'package:find_food_app/ui/shared/widget/form_input.dart';
 import 'package:flutter/material.dart';

class MyAddRestaurantScreen extends StatefulWidget {
  static final String routeName = '/add-restaurant';

  const MyAddRestaurantScreen({Key? key}) : super(key: key);

  @override
  _MyAddRestaurantScreenState createState() => _MyAddRestaurantScreenState();
}

class _MyAddRestaurantScreenState extends State<MyAddRestaurantScreen> {
  final String screenTitle = "Add Restaurant";
  int? selectedIndex = null;
  List<Map<String, dynamic>> categoryList = [
    {
      "id":1,
      "name": "Western",
      "isChecked": false,
    },
    {
      "id":2,
      "name": "Chineese",
      "isChecked": true,
    },
    {
      "id":3,
      "name": "Japan",
      "isChecked": true,
    },
    {
      "id":4,
      "name": "Japan",
      "isChecked": true,
    },
    {
      "id":5,
      "name": "Western",
      "isChecked": false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only( bottom: 15, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(Icons.arrow_back_ios, size: 25,)
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                          child: Text(
                            "Add Restaurant",
                            style: Theme.of(context).textTheme.headline2!.copyWith(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              MyFormInput(
                                  inputLabel: "Restaurant name",
                                  hintText: "Restaurant name"
                              ),
                              MyFormInput(
                                  inputLabel: "Restaurant address",
                                  maxLines: null,
                                  minLines: 6,
                                  hasInkWell: true,
                                  readonly: true,
                                  hintText: "Restaurant address"
                              ),
                              MyFormInput(
                                  inputLabel: "Phone number",
                                  textInputType: TextInputType.phone,
                                  hintText: "Phone number"
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                          child: Text(
                            "Food Category",
                            style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          child: GridView(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 1.0,
                            ),
                            children: categoryList.map((category){
                              return Container(
                                child: MyCustomCategoryCard(
                                  id: category["id"],
                                  name: category["name"],
                                  isChecked:this.selectedIndex == category['id'],
                                  onTap: () {
                                    var index = categoryList.indexWhere((element) => element["id"] == category["id"]);
                                    setState(() {
                                      this.selectedIndex = categoryList[index]['id'];
                                    });
                                  },
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        MyCustomButton(
                          textColor: Colors.white,
                          buttonContent: "Add Restaurant",
                          backgroundColor: Theme.of(context).primaryColor,
                          borderColor: Theme.of(context).primaryColor,
                          onTap: () {
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}



class MyCustomCategoryCard extends StatefulWidget {
    String name;
    bool isChecked;
    int id;
    void Function() onTap;
   MyCustomCategoryCard({
    Key? key,
    required this.id,
    required this.name,
    required this.isChecked,
     required this.onTap,
   }) : super(key: key);

  @override
  _MyCustomCategoryCardState createState() => _MyCustomCategoryCardState();
}

class _MyCustomCategoryCardState extends State<MyCustomCategoryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        width: 100,
        height: 100,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: widget.isChecked ? Colors.blueAccent : Colors.grey, width: 3,),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.check,
                size: 25,
                color: widget.isChecked ? Colors.blueAccent : Colors.grey,
              ),

            ),
            Center(
              child: Text(widget.name),
            ),
          ],
        ),
      ),
    );
  }
}


// class MyAddRestaurantScreen extends StatefulWidget {
//   static final String routeName = '/add-restaurant';
//   const MyAddRestaurantScreen({Key? key}) : super(key: key);
//
//   @override
//   _MyAddRestaurantScreenState createState() => _MyAddRestaurantScreenState();
// }
//
// class _MyAddRestaurantScreenState extends State<MyAddRestaurantScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//

