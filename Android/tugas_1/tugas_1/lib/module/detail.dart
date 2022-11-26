import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String image;
  final String name;
  final String chefImage;
  final String chefName;
  DetailScreen(
      {required this.image,
      required this.name,
      required this.chefImage,
      required this.chefName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(
          child: Column(children: [
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                height: 240,
                width: 450,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.blueGrey,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.blueGrey,
                      Colors.black,
                    ],
                  ),
                  image: DecorationImage(
                      image: NetworkImage(image),
                      colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.6),
                        BlendMode.dstATop,
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            padding: EdgeInsets.only(left: 7),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white24),
                            child: InkWell(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Text(
                            "Food Preview",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                              child: Icon(
                            Icons.share,
                            color: Colors.white,
                          ))
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(top: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: NetworkImage(chefImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              chefName,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.end,
                            ))
                      ],
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Row(children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(Icons.star, color: Colors.orangeAccent),
                        ),
                        Text("4.5", style: TextStyle(color: Colors.blueGrey))
                      ])
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 2, color: Colors.blueGrey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("20",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey)),
                              Text("Minutes",
                                  style: TextStyle(color: Colors.blueGrey))
                            ],
                          ),
                          Column(
                            children: [
                              Text("20",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey)),
                              Text("Kcal",
                                  style: TextStyle(color: Colors.blueGrey))
                            ],
                          ),
                          Column(
                            children: [
                              Text("20",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey)),
                              Text("Gram",
                                  style: TextStyle(color: Colors.blueGrey))
                            ],
                          )
                        ],
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text("Ingredients",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(child: Text("5 Items"))
                          ]),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("Peanut Sauce",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.blueGrey)),
                                ),
                                Container(child: Text("1/2 Kg"))
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("Egg",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.blueGrey)),
                                ),
                                Container(child: Text("3 Kg"))
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("Tofu",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.blueGrey)),
                                ),
                                Container(child: Text("1/2 Kg"))
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("Tempe",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.blueGrey)),
                                ),
                                Container(child: Text("5 Slices"))
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("White Noodle",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.blueGrey)),
                                ),
                                Container(child: Text("50 Gram"))
                              ]),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blueGrey,
                            ),
                            child: Center(
                                child: Icon(Icons.comment_outlined,
                                    color: Colors.white)),
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blueGrey,
                            ),
                            child: Center(
                                child: Text("Start Cooking",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white))),
                          )
                        ]),
                  )
                ]))
          ]),
        )
      ],
    )));
  }
}
