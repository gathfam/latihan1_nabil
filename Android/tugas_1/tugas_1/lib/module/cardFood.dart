import 'package:flutter/material.dart';
import 'package:tugas_1/module/detail.dart';
Widget CardFood(
  String gambar,
  String kalori,
  String rating,
  String nama,
  String waktu,
  String gambarChef,
  String chef,
) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Row(
      children: [
        Container(
            margin: EdgeInsets.only(
              top: 15,
            ),
            width: 170,
            height: 170,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.blueGrey,
                  Colors.black,
                ],
              ),
              image: DecorationImage(
                image: NetworkImage(gambar),
                colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.dstATop,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: (5)),
                            child: Icon(Icons.food_bank_outlined,
                                color: Colors.white)),
                        Text(kalori,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: (5)),
                            child: Icon(Icons.star, color: Colors.amber)),
                        Text(rating,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(nama,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: Icon(Icons.access_time,
                                    color: Colors.white),
                              ),
                              Text(waktu,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                          Container(
                              child: Icon(Icons.bookmark_border_outlined,
                                  color: Colors.white))
                        ])
                  ],
                ),
              ],
            ))
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.only(top: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: NetworkImage(gambarChef),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              chef,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.end,
            ))
      ],
    ),
  ]);
}
