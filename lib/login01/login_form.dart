import 'package:flutter/material.dart';
import 'package:loginChallengesApp/login01/control_form_button.dart';

class LoginForm extends StatelessWidget {
  final void Function() onClose;
  final void Function(int) selectScreen;

  const LoginForm({@required this.onClose, @required this.selectScreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                //header login
                ControlFormButton(
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    title: 'Login',
                    onPress: () => selectScreen(0)),
                SizedBox(
                  width: 10,
                ),
                ControlFormButton(
                    backgroundColor: Colors.white,
                    textColor: Colors.black,
                    title: 'SignUp',
                    onPress: () => selectScreen(1)),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: onClose,
                ),
              ],
            ),
            Container(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: ControlFormButton(
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  title: 'Login',
                  onPress: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
