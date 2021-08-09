import 'package:flutter/material.dart';
import 'package:food_delivery/helpers/colors.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

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
            Center(),
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
              "Please enter your email to receive a link to  create a new password via email",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(decoration: textFieldDeocration("Password")),
            SizedBox(
              height: 16,
            ),
            TextField(decoration: textFieldDeocration(" Confirm Password")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
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
            Radius.circular(100.0),
          ),
          borderSide: BorderSide.none,
        ),
        filled: true,
        hintText: hint,
        fillColor: Colors.grey[200]);
  }
}
