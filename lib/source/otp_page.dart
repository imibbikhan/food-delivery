import 'package:flutter/material.dart';
import 'package:food_delivery/helpers/colors.dart';
import 'package:food_delivery/source/new_password.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Center(),
            SizedBox(
              height: 30,
            ),
            Text(
              "New Password",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Please check your mobile number 0312*****12 continue to reset your password",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: TextField(
                      decoration: textFieldDeocration(""),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: TextField(
                      decoration: textFieldDeocration(""),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: TextField(
                      decoration: textFieldDeocration(""),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: TextField(
                      decoration: textFieldDeocration(""),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: TextField(
                      decoration: textFieldDeocration(""),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: TextField(
                      decoration: textFieldDeocration(""),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPassword()),
                );
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
            SizedBox(
              height: 16,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Didn't recieve?"),
              TextButton(onPressed: () {}, child: Text("Click here"))
            ])
          ],
        ),
      ),
    ));
  }

  InputDecoration textFieldDeocration(String hint) {
    return InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          borderSide: BorderSide.none,
        ),
        filled: true,
        hintText: hint,
        fillColor: Colors.grey[200]);
  }
}
