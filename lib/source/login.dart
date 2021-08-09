import 'package:flutter/material.dart';
import 'package:food_delivery/helpers/colors.dart';
import 'package:food_delivery/source/create_account.dart';
import 'package:food_delivery/source/forgot_password.dart';
import 'package:food_delivery/source/get_started.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              "Login",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Add you details to login",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(decoration: textFieldDeocration("Your Email")),
            SizedBox(
              height: 16,
            ),
            TextField(decoration: textFieldDeocration("Password")),
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
                'Login',
                style: TextStyle(fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                minimumSize: Size(double.infinity, 50),
                primary: MONKEY_BG_COLOR,
              ),
            ),
            SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: Text("Forgot Password?")),
            SizedBox(
              height: 20,
            ),
            Text("Or Login with"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: StadiumBorder()),
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                color: Colors.white,
                size: 24.0,
              ),
              label: Text('Login with Facebook'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: MONKEY_BG_COLOR,
                  minimumSize: Size(double.infinity, 50),
                  shape: StadiumBorder()),
              onPressed: () {},
              icon: Image.asset(
                "images/google-plus-logo.png",
                height: 28,
                width: 28,
              ),
              label: Text('Login with Google'),
            ),
            SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Don't have an account?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateAccount()),
                    );
                  },
                  child: Text("Sign Up"))
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
