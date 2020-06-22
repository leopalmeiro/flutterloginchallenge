import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login04FieldComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(40),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(40),
            child: TextField(
              
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter your Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                prefixIcon: Icon(
                  FontAwesomeIcons.lock,
                  color: Colors.red,
                ),
                
                
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 55,
            child: RaisedButton(
                textColor: Colors.white,
                color: Colors.red,
                child: Text('Login', style: TextStyle(fontSize: 20),),
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
