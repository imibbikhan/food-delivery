import 'package:flutter/material.dart';
import 'package:food_delivery/helpers/colors.dart';
import 'package:food_delivery/source/otp_page.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

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
              "Reset Password",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Please enter your email to receive a link to  create a new password via email",
              style: TextStyle(color: Colors.grey, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(decoration: textFieldDeocration("Your Email")),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OTPPage()),
                );
              },
              child: Text(
                'Reset Password',
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
