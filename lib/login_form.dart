import 'package:flutter/material.dart';
import 'package:loginChallengesApp/control_form_button.dart';

class LoginForm extends StatelessWidget {
  final Function() onClose;
  const LoginForm({@required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              //header login
              ControlFormButton(
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  title: 'Login',
                  onPress: null),
              SizedBox(
                width: 10,
              ),
              ControlFormButton(
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  title: 'SignUp',
                  onPress: null),
              Spacer(),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: onClose,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          ListView(
            shrinkWrap: true,
            //padding: const EdgeInsets.all(16.0),
            children: <Widget>[
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
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
