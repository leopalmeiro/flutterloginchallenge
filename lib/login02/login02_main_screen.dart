import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginChallengesApp/login01/control_form_button.dart';
import 'package:loginChallengesApp/login02/text_field_component.dart';
import 'package:loginChallengesApp/routes/app_routes.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Login02MainScreen extends StatefulWidget {
  final String title;
  Login02MainScreen({@required this.title});
  @override
  _Login02MainScreenState createState() => _Login02MainScreenState();
}

class _Login02MainScreenState extends State<Login02MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 650,
            child: RotatedBox(
              quarterTurns: 2,
              child: WaveWidget(
                config: CustomConfig(
                  durations: [
                    19440,
                    10800,
                  ],
                  heightPercentages: [
                    0.20,
                    0.25,
                  ],
                  gradients: [
                    [Colors.deepPurple, Colors.deepPurple.shade200],
                    [Colors.indigo.shade300, Colors.purple.shade200],
                  ],
                  blur: MaskFilter.blur(
                    BlurStyle.solid,
                    10,
                  ),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.topRight,
                ),
                waveAmplitude: 0,
                size: Size(double.infinity, double.infinity),
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                    TextFieldComponent(
                      hintText: 'Username',
                      addSuffixIcon: true,
                      suffixIcon:
                          Icon(FontAwesomeIcons.check, color: Colors.black26),
                      prefixIcon:
                          Icon(FontAwesomeIcons.user, color: Colors.black26),
                    ),
                    TextFieldComponent(
                      hintText: 'Password',
                      addSuffixIcon: false,
                      prefixIcon:
                          Icon(FontAwesomeIcons.lock, color: Colors.black26),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                        elevation: 11,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Do you forgot your password?',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'or Connect with',
                            style:
                                TextStyle(color: Colors.black26, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: ControlFormButton(
                                  backgroundColor: Colors.lightBlue[800],
                                  textColor: Colors.white,
                                  title: 'Facebook',
                                  onPress: () {},
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: ControlFormButton(
                                  backgroundColor: Colors.blue[900],
                                  textColor: Colors.white,
                                  title: 'Twitter',
                                  onPress: () {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 20),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'SignUp',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
