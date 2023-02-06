import 'package:flutter/material.dart';
import 'package:my_app/screens/individualpage.dart';
import 'package:my_app/screens/login.dart';

import 'package:my_app/utils/colors.dart';

import 'package:my_app/utils/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map> plants = [
    {
      "title": "Air Purifier",
      "subtitle": "Peneromia",
      "price": "RS 400 ",
    },
    {
      "title": "Air Purifier",
      "subtitle": "Peneromia",
      "price": "RS 400 ",
    },
    {
      "title": "Air Purifier",
      "subtitle": "Peneromia",
      "price": "RS 400 ",
    },
    {
      "title": "Air Purifier",
      "subtitle": "Peneromia",
      "price": "RS 400 ",
    },
    {
      "title": "Air Purifier",
      "subtitle": "Peneromia",
      "price": "RS 400 ",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          drawer: Drawer(
            backgroundColor: ColorsConstraint.themecolor.withOpacity(0.9),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shop,
                        color: ColorsConstraint.fontcolor,
                      ),
                      label: Text(
                        "Shop",
                        style: TextStyle(color: ColorsConstraint.fontcolor),
                      )),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.health_and_safety,
                        color: ColorsConstraint.fontcolor,
                      ),
                      label: Text("Plant Care",
                          style: TextStyle(color: ColorsConstraint.fontcolor))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.group,
                        color: ColorsConstraint.fontcolor,
                      ),
                      label: Text("Community",
                          style: TextStyle(color: ColorsConstraint.fontcolor))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        color: ColorsConstraint.fontcolor,
                      ),
                      label: Text("My Account",
                          style: TextStyle(color: ColorsConstraint.fontcolor))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.fire_truck,
                        color: ColorsConstraint.fontcolor,
                      ),
                      label: Text("Track Order",
                          style: TextStyle(color: ColorsConstraint.fontcolor))),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Get the Dirt",
                      style: TextStyle(
                          color: ColorsConstraint.fontcolor, fontSize: 20)),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Enter you Email',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "FAQ",
                        style: TextStyle(color: ColorsConstraint.fontcolor),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("ABOUT US",
                          style: TextStyle(color: ColorsConstraint.fontcolor))),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("CONTACT US",
                          style: TextStyle(color: ColorsConstraint.fontcolor))),
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 18.0, right: 10.0, left: 10.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset(
                      "images/titlelogo.png",
                    )),
                    Spacer(),
                    Icon(Icons.notifications),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.sort_rounded),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Image.asset("images/banner.png"),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30.0, left: 15, bottom: 2),
                    child: Text(
                      TextConstraint.home,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 55, left: 15.0),
                    child: Text(TextConstraint.home2,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 15.0),
                    child: Text(TextConstraint.dis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: ColorsConstraint.fontcolor)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 15.0),
                    child: Text(TextConstraint.disount,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: ColorsConstraint.fontcolor)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 5, right: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: ColorsConstraint.fontcolor),
                          width: 400,
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 290.0),
                            child: Icon(Icons.search),
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: ColorsConstraint.fontcolor),
                      child: Icon(Icons.settings),
                    )
                  ],
                ),
              ),
              TabBar(
                  indicatorColor: ColorsConstraint.passcolor,
                  labelColor: ColorsConstraint.passcolor,
                  unselectedLabelColor:
                      ColorsConstraint.passcolor.withOpacity(0.5),
                  tabs: [
                    Tab(text: "Top Pick"),
                    Tab(text: "Indoor"),
                    Tab(text: "Outdoor"),
                    Tab(text: "Seeds"),
                    Tab(text: "Plants"),
                  ]),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: plants.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail()));
                          },
                          child: ListTile(
                              title: Text(plants[index]["title"]),
                              subtitle: Text(
                                plants[index]["subtitle"],
                              )),
                        ),
                      ],
                    );
                  }),
                ),
              )
            ],
          ),
          bottomNavigationBar:
              BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: "",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              label: "",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket, color: Colors.black),
              label: "",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              label: "",
              backgroundColor: Colors.white,
            ),
          ]),
        ),
      ),
    );
  }
}
