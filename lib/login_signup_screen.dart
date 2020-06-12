import 'package:flutter/material.dart';
import 'package:loginChallengesApp/login_form.dart';
import 'package:loginChallengesApp/signup_form.dart';

class LoginSignUpScreen extends StatefulWidget {
  final int formIndex;
  final Function() onClose;

  const LoginSignUpScreen({@required this.formIndex, @required this.onClose});

  @override
  _LoginSignUpScreenState createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  Widget _openForm() {
    switch (widget.formIndex) {
      case 0:
        return LoginForm(
          onClose: widget.onClose,
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
      alignment: Alignment.center,
      child: _openForm(),
    );
  }
}
