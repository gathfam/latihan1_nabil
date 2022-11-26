import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_1/module/cardFood.dart';
import 'package:tugas_1/module/detail.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.all(17),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[200],
                        ),
                        width: 310,
                        height: 50,
                        child: Row(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Icon(Icons.search,
                                      color: Colors.grey[500]),
                                ),
                                Text(
                                  'Search',
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueGrey[700],
                    ),
                    width: 50,
                    height: 50,
                    child: Icon(Icons.notifications_outlined,
                        color: Colors.grey[100]),
                  )
                ],
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15, right: 5),
                        child: Text('Populer',
                            style: TextStyle(color: Colors.white)),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[700],
                            borderRadius: BorderRadius.circular(15)),
                        width: 100,
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, right: 5),
                        child: Text('Breakfast',
                            style: TextStyle(color: Colors.blueGrey[700])),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.0, color: const Color(0xFF455A64)),
                            borderRadius: BorderRadius.circular(15)),
                        width: 100,
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, right: 5),
                        child: Text('Lunch',
                            style: TextStyle(color: Colors.blueGrey[700])),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.0, color: const Color(0xFF455A64)),
                            borderRadius: BorderRadius.circular(15)),
                        width: 100,
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, right: 5),
                        child: Text('Dinner',
                            style: TextStyle(color: Colors.blueGrey[700])),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.0, color: const Color(0xFF455A64)),
                            borderRadius: BorderRadius.circular(15)),
                        width: 100,
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, right: 5),
                        child: Text('Beverage',
                            style: TextStyle(color: Colors.blueGrey[700])),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.0, color: const Color(0xFF455A64)),
                            borderRadius: BorderRadius.circular(15)),
                        width: 100,
                        height: 30,
                      ),
                    ],
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return DetailScreen(
                                      chefImage:
                                          "https://onecms-res.cloudinary.com/image/upload/s--npOGyZbL--/c_crop,h_491,w_873,x_1,y_1/c_fill,g_auto,h_676,w_1200/f_auto,q_auto/v1/mediacorp/cna/image/2021/11/23/uncle_roger_nigel_ng.png?itok=aJhSj6E9",
                                      image:
                                          "https://cdn-2.tstatic.net/travel/foto/bank/images/gado-gado.jpg",
                                      name: "Gado-gado",
                                      chefName: "Uncle Roger");
                                },
                              ));
                            },
                            child: CardFood(
                              "https://cdn-2.tstatic.net/travel/foto/bank/images/gado-gado.jpg",
                              "40 Kcal",
                              "4.3",
                              "Gado-gado",
                              "29 Minutes",
                              "https://onecms-res.cloudinary.com/image/upload/s--npOGyZbL--/c_crop,h_491,w_873,x_1,y_1/c_fill,g_auto,h_676,w_1200/f_auto,q_auto/v1/mediacorp/cna/image/2021/11/23/uncle_roger_nigel_ng.png?itok=aJhSj6E9",
                              "Uncle Roger",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return DetailScreen(
                                      chefImage:
                                          "https://onecms-res.cloudinary.com/image/upload/s--npOGyZbL--/c_crop,h_491,w_873,x_1,y_1/c_fill,g_auto,h_676,w_1200/f_auto,q_auto/v1/mediacorp/cna/image/2021/11/23/uncle_roger_nigel_ng.png?itok=aJhSj6E9",
                                      image:
                                          "https://sgp1.digitaloceanspaces.com/tz-mag-id/wp-content/uploads/2018/04/040404043030/9-2-Pempek-By-fatroy3.jpg",
                                      name: "Pempek",
                                      chefName: "Uncle Roger");
                                },
                              ));
                            },
                            child: CardFood(
                                "https://sgp1.digitaloceanspaces.com/tz-mag-id/wp-content/uploads/2018/04/040404043030/9-2-Pempek-By-fatroy3.jpg",
                                "20 Kcal",
                                "4.5",
                                "Pempek",
                                "15 Minutes",
                                "https://onecms-res.cloudinary.com/image/upload/s--npOGyZbL--/c_crop,h_491,w_873,x_1,y_1/c_fill,g_auto,h_676,w_1200/f_auto,q_auto/v1/mediacorp/cna/image/2021/11/23/uncle_roger_nigel_ng.png?itok=aJhSj6E9",
                                "Aunty Helen"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return DetailScreen(
                                      chefImage:
                                          "https://onecms-res.cloudinary.com/image/upload/s--npOGyZbL--/c_crop,h_491,w_873,x_1,y_1/c_fill,g_auto,h_676,w_1200/f_auto,q_auto/v1/mediacorp/cna/image/2021/11/23/uncle_roger_nigel_ng.png?itok=aJhSj6E9",
                                      image:
                                          "https://cdn0-production-images-kly.akamaized.net/CnWVur2y3ywMWHPk0IWr14xcqH4=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1355280/original/087166800_1474775755-nasi-goreng-kambing.jpg",
                                      name: "Nasi Goreng",
                                      chefName: "Uncle Roger");
                                },
                              ));
                            },
                            child: CardFood(
                                "https://cdn0-production-images-kly.akamaized.net/CnWVur2y3ywMWHPk0IWr14xcqH4=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1355280/original/087166800_1474775755-nasi-goreng-kambing.jpg",
                                "40 Kcal",
                                "4.3",
                                "Nasi Goreng",
                                "20 Minutes",
                                "https://onecms-res.cloudinary.com/image/upload/s--npOGyZbL--/c_crop,h_491,w_873,x_1,y_1/c_fill,g_auto,h_676,w_1200/f_auto,q_auto/v1/mediacorp/cna/image/2021/11/23/uncle_roger_nigel_ng.png?itok=aJhSj6E9",
                                "Uncle Roger"),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return DetailScreen(
                                      chefImage:
                                          "https://img.okezone.com/content/2020/03/05/298/2178904/deretan-makanan-yang-paling-dibenci-chef-gordon-ramsay-xi6Jxzxoxj.jpg",
                                      image:
                                          "https://www.herworld.co.id/gallery/images/rendangmakanan.jpg",
                                      name: "Rendang",
                                      chefName: "Gordon Ramsay");
                                },
                              ));
                            },
                            child: CardFood(
                                "https://www.herworld.co.id/gallery/images/rendangmakanan.jpg",
                                "90 Kcal",
                                "4.5",
                                "Rendang",
                                "120 Minutes",
                                "https://img.okezone.com/content/2020/03/05/298/2178904/deretan-makanan-yang-paling-dibenci-chef-gordon-ramsay-xi6Jxzxoxj.jpg",
                                "Gordon Ramsay"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return DetailScreen(
                                      chefImage:
                                          "https://img.okezone.com/content/2020/03/05/298/2178904/deretan-makanan-yang-paling-dibenci-chef-gordon-ramsay-xi6Jxzxoxj.jpg",
                                      image:
                                          "https://skalacerita.com/wp-content/uploads/2021/09/6988711-640x853.jpeg.webp",
                                      name: "Klepon",
                                      chefName: "Uncle Roger");
                                },
                              ));
                            },
                            child: CardFood(
                                "https://skalacerita.com/wp-content/uploads/2021/09/6988711-640x853.jpeg.webp",
                                "70 Kcal",
                                "4.3",
                                "Klepon",
                                "20 Minutes",
                                "https://onecms-res.cloudinary.com/image/upload/s--npOGyZbL--/c_crop,h_491,w_873,x_1,y_1/c_fill,g_auto,h_676,w_1200/f_auto,q_auto/v1/mediacorp/cna/image/2021/11/23/uncle_roger_nigel_ng.png?itok=aJhSj6E9",
                                "Uncle Roger"),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return DetailScreen(
                                      chefImage:
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-WDROLbci9ZNbpDf1HrYr-611PbvgEaEGFQ&usqp=CAU",
                                      image:
                                          "https://www.nibble.id/wp-content/uploads/2015/12/makanan-indonesia-05.jpg",
                                      name: "Bakso Setan",
                                      chefName: "Chef Juna");
                                },
                              ));
                            },
                            child: CardFood(
                                "https://www.nibble.id/wp-content/uploads/2015/12/makanan-indonesia-05.jpg",
                                "90 Kcal",
                                "4.5",
                                "Bakso Setan",
                                "45 Minutes",
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-WDROLbci9ZNbpDf1HrYr-611PbvgEaEGFQ&usqp=CAU",
                                "Chef Juna"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    )));
  }
}
