import 'package:flutter/material.dart';
import 'package:loginChallengesApp/control_form_button.dart';
import 'package:loginChallengesApp/login_form.dart';
import 'package:loginChallengesApp/signup_form.dart';

class LoginSignUpScreen extends StatefulWidget {
  final int formIndex;

  const LoginSignUpScreen({this.formIndex});

  @override
  _LoginSignUpScreenState createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  Widget _openForm() {
    switch (widget.formIndex) {
      case 0:
        return Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                //header login
                ControlFormButton(
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    title: 'Login',
                    onPress: null),
                ControlFormButton(
                    backgroundColor: Colors.white,
                    textColor: Colors.black,
                    title: 'SignUp',
                    onPress: null),
                Spacer(),
                IconButton(icon: Icon(Icons.close), onPressed: null),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            LoginForm(),
          ],
        );
        break;
      case 1:
        return SignUpForm();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: _openForm(),
    );
  }
}
