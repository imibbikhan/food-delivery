import 'package:flutter/material.dart';
import 'package:food_delivery/helpers/colors.dart';
import 'package:food_delivery/source/get_started.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

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
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Add you details to Sign Up",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(decoration: textFieldDeocration("Your Email")),
            SizedBox(
              height: 16,
            ),
            TextField(decoration: textFieldDeocration("Mobile")),
            SizedBox(
              height: 16,
            ),
            TextField(decoration: textFieldDeocration("Address")),
            SizedBox(
              height: 16,
            ),
            TextField(decoration: textFieldDeocration("Password")),
            SizedBox(
              height: 16,
            ),
            TextField(decoration: textFieldDeocration("Confirm Password")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GetStarted()),
                );
              },
              child: Text(
                'Sign Up',
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
              Text("Already have an account?"),
              TextButton(onPressed: () {}, child: Text("Sign In"))
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
            Radius.circular(100.0),
          ),
          borderSide: BorderSide.none,
        ),
        filled: true,
        hintText: hint,
        fillColor: Colors.grey[200]);
  }
}
