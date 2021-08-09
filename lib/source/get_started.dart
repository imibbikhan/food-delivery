import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/helpers/colors.dart';
import 'package:food_delivery/source/food_home.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  List<PagerType> pageList = [
    PagerType(
        imageName: "find_food.png",
        title: "Find Food You Love",
        description:
            "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep"),
    PagerType(
        imageName: "fast_delivery.png",
        title: "Fast Delivery",
        description:
            "Fast food delivery to your home, office wherever you are"),
    PagerType(
        imageName: "live_tracking.png",
        title: "Live tracking",
        description:
            "Real time tracking of your food on the app once you placed the order")
  ];
  PageController _pageController = PageController();
  double selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 60, 5, 16),
          child: Stack(
            children: [
              Container(
                // height: 300,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  itemBuilder: (context, value) {
                    return pagerView(value);
                  },
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      selectedindex = page.toDouble();
                    });
                  },
                  itemCount: pageList.length,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Positioned(
                top: 320,
                left: 0,
                right: 0,
                child: Container(
                  child: DotsIndicator(
                    dotsCount: pageList.length,
                    position: selectedindex,
                    decorator: DotsDecorator(
                      color: Colors.grey, // Inactive color
                      activeColor: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Positioned(
                top: 470,
                left: 0,
                right: 0,
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedindex == pageList.length - 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FoodHomePage()),
                      );
                      return;
                    }

                    if (selectedindex < pageList.length) {
                      setState(() {
                        selectedindex = selectedindex + 1;
                      });
                      _pageController.animateToPage(selectedindex.toInt(),
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    }
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(double.infinity, 50),
                    primary: MONKEY_BG_COLOR,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget pagerView(int index) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            'images/${pageList[index].imageName}',
            height: 300,
          ),
          SizedBox(
            height: 49,
          ),
          Text(
            pageList[index].title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            pageList[index].description,
            style: TextStyle(color: Colors.grey, fontSize: 15),
            textAlign: TextAlign.center,
          )
        ],
      ), //
    );
  }
}

class PagerType {
  String imageName;
  String title;
  String description;

  PagerType(
      {required this.imageName,
      required this.title,
      required this.description});
}
