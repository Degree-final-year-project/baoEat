import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Home"),
          actions: [
            Container(
              margin: EdgeInsets.only(
                right: 20,
              ),
              child: IconButton(
                onPressed: () {}
                , icon: Icon(
                Icons.search,
                size: 40,
              ),
              ),
            ),
          ],
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          iconSize: 30,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<StadiumBorder>(
                                  StadiumBorder(),
                                ),
                                backgroundColor:MaterialStateProperty.all<Color>(
                                  Colors.white,
                                ),
                                side: MaterialStateProperty.all<BorderSide>(
                                    BorderSide(
                                      color: Colors.black,
                                    )
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.gps_fixed, color: Colors.black,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "3 KM",
                                    style: Theme.of(context).textTheme.headline4!.copyWith(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              )
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<StadiumBorder>(
                                  StadiumBorder(),
                                ),
                                backgroundColor:MaterialStateProperty.all<Color>(
                                  Colors.white,
                                ),
                                side: MaterialStateProperty.all<BorderSide>(
                                    BorderSide(
                                      color: Colors.black,
                                    )
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.filter_list, color: Colors.black,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Filter",
                                    style: Theme.of(context).textTheme.headline4!.copyWith(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              )
                          ),
                        ],
                      )

                    ],
                  ),
                ),
                Expanded(child: ListView.builder(
                    cacheExtent: 1500,
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).dividerColor,
                              blurRadius: 4,
                              spreadRadius: 0,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(20),
                        child: Material(
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl: "http://via.placeholder.com/400x150",
                                  placeholder: (context, url) => CircularProgressIndicator(),
                                  errorWidget: (context, url, error) => Icon(Icons.error),
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child:  Container(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Lemon Tree (Taman Mutiara Rini)",
                                                  overflow: TextOverflow.ellipsis,
                                                  style: Theme.of(context).textTheme.headline3!.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,),
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Taman Mutiara Rini",
                                                      style: Theme.of(context).textTheme.headline4!.copyWith(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 30,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      children: [
                                                        Icon(Icons.location_on),
                                                        Text(
                                                          "-60km",
                                                          style:Theme.of(context).textTheme.headline4!.copyWith(
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.remove_red_eye),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          "20,000",
                                                          style:Theme.of(context).textTheme.headline4!.copyWith(
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.mode_comment),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          "50",
                                                          style:Theme.of(context).textTheme.headline4!.copyWith(
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.attach_money),
                                                        Text(
                                                          "RM50/ Person",
                                                          style:Theme.of(context).textTheme.headline4!.copyWith(
                                                              color: Colors.black
                                                          ),
                                                        ),
                                                      ],
                                                    ),

                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          child: Text(
                                            "4.3",
                                            style: Theme.of(context).textTheme.headline1!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orange,),
                                          ),
                                        ),
                                      ],
                                    )
                                ),

                              ],
                            ),
                          ),
                        ),
                      );
                    }),),
              ],
            )
        )
    );
  }
}

