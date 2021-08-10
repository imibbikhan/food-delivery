import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_delivery/helpers/colors.dart';

class FoodHomePage extends StatefulWidget {
  const FoodHomePage({Key? key}) : super(key: key);

  @override
  _FoodHomePageState createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  List<Cousine> cousines = [
    Cousine(cousineName: "USA", foodImage: "usa.jpg"),
    Cousine(cousineName: "Spanish", foodImage: "spanish.jpg"),
    Cousine(cousineName: "French", foodImage: "french.jpg"),
    Cousine(cousineName: "Italian", foodImage: "italian.jpg"),
    Cousine(cousineName: "Turkish", foodImage: "turkish.jpg"),
  ];

  List<FoodShop> shops = [
    FoodShop(
        shopImage: "Lido Di Manhattan Ristorante.jpg",
        shopName: "Lido Di Manhattan Ristorante",
        ratings: "4.7",
        totalRating: "150",
        location: "New York"),
    FoodShop(
        shopImage: "Ayans italian diner.jpg",
        shopName: "Ayans italian diner",
        ratings: "4.5",
        totalRating: "120",
        location: "New York"),
    FoodShop(
        shopImage: "Salad delights.jpg",
        shopName: "Salad delights",
        ratings: "4.6",
        totalRating: "50",
        location: "LA")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(Icons.shopping_basket),
          ),
          SizedBox(width: 16),
        ],
        centerTitle: false,
        title: Text("Good morning Akila!"),
      ),
      body: Container(
        child: Container(
          child: SingleChildScrollView(
            // physics: ScrollPhysics(),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
                  child: TextField(
                    decoration: textFieldDeocration("Search"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  height: 115,
                  child: ListView.builder(
                      itemCount: cousines.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, value) {
                        return cousineSet(value);
                      }),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Row(
                    children: [
                      Text(
                        "Populor Restuarants",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      TextButton(onPressed: () {}, child: Text("View All"))
                    ],
                  ),
                ),
                Container(
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: shops.length,
                      itemBuilder: (context, value) {
                        return foodShopListType(value);
                      }),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Row(
                    children: [
                      Text(
                        "Most Populor",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      TextButton(onPressed: () {}, child: Text("View All"))
                    ],
                  ),
                ),
                Container(
                  height: 190,
                  padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: shops.length,
                      itemBuilder: (context, value) {
                        return mostPopularCousineSet(value);
                      }),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
                  child: Row(
                    children: [
                      Text(
                        "Recent Items",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      TextButton(onPressed: () {}, child: Text("View All"))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: shops.length,
                      itemBuilder: (context, value) {
                        return recentItems(value);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget recentItems(int index) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              "images/popular/${shops[index].shopImage}",
              height: 75,
              width: 75,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shops[index].shopName,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 20,
                      color: MONKEY_BG_COLOR,
                    ),
                    Text(
                        "${shops[index].ratings} (${shops[index].totalRating}) ratings) Café    ${shops[index].location}")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget foodShopListType(int index) {
    return Container(
      // height: 255,
      child: Column(
        children: [
          Image.asset(
            "images/popular/${shops[index].shopImage}",
            height: 200,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shops[index].shopName,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 20,
                      color: MONKEY_BG_COLOR,
                    ),
                    Text(
                        "${shops[index].ratings} (${shops[index].totalRating}) ratings) Café    ${shops[index].location}")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget mostPopularCousineSet(int index) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              "images/popular/${shops[index].shopImage}",
              height: 135,
              width: 228,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shops[index].shopName,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(shops[index].location + " "),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: MONKEY_BG_COLOR,
                  ),
                  Text("${shops[index].ratings} ratings")
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget cousineSet(int index) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              "images/cousines/${cousines[index].foodImage}",
              height: 88,
              width: 88,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              cousines[index].cousineName,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }

  InputDecoration textFieldDeocration(String hint) {
    return InputDecoration(
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(100.0),
          ),
          borderSide: BorderSide.none,
        ),
        filled: true,
        hintText: hint,
        fillColor: Colors.grey[200]);
  }
}

class Cousine {
  String cousineName;
  String foodImage;
  Cousine({required this.cousineName, required this.foodImage});
}

class FoodShop {
  String shopName;
  String shopImage;
  String ratings;
  String totalRating;
  String location;

  FoodShop({
    required this.shopImage,
    required this.shopName,
    required this.ratings,
    required this.totalRating,
    required this.location,
  });
}
