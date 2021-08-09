import 'package:flutter/material.dart';
import 'package:food_delivery/helpers/colors.dart';
import 'package:food_delivery/source/create_account.dart';
import 'package:food_delivery/source/login.dart';
import 'package:google_fonts/google_fonts.dart';

class StartHome extends StatelessWidget {
  const StartHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage('images/monkey_face.png'),
                height: 105,
                width: 105,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Meal",
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 34),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Monkey",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 34),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              "FOOD DELIVERY",
              style: TextStyle(fontSize: 13),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 17),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      minimumSize: Size(double.infinity, 44),
                      primary: MONKEY_BG_COLOR,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      child: Text("Create an account",
                          style:
                              TextStyle(fontSize: 17, color: MONKEY_BG_COLOR)),
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                              Size(double.infinity, 44)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side:
                                          BorderSide(color: MONKEY_BG_COLOR)))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateAccount()),
                        );
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
