import 'package:flutter/material.dart';
import 'package:loginChallengesApp/login01/login_form.dart';
import 'package:loginChallengesApp/login01/signup_form.dart';



class LoginSignUpScreen extends StatefulWidget {
  final int formIndex;
  final void Function() onClose;
  final void Function(int) selectScreen;

  const LoginSignUpScreen(
      {@required this.formIndex,
      @required this.onClose,
      @required this.selectScreen, Key key}):  super(key: key);
  @override
  _LoginSignUpScreenState createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  Widget _openForm() {
    switch (widget.formIndex) {
      case 0:
        return LoginForm(
          onClose: widget.onClose,
          selectScreen: widget.selectScreen,
        );
        break;
      case 1:
        return SignUpForm(
          onClose: widget.onClose,
          selectScreen: widget.selectScreen,
        );
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      alignment: Alignment.center,
      padding: EdgeInsets.all(20.0),
      
      child: _openForm(),
    );
  }
}
