import 'package:flutter/material.dart';
import 'package:loginChallengesApp/login04/wave_clipper.dart';
import 'package:loginChallengesApp/routes/app_routes.dart';

class Login04MainScreen extends StatelessWidget {
  final String title;

  const Login04MainScreen({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              ClipPath(
                clipper: Wave01PathClipper(),
                child: Container(
                  height: 500,
                  color: Colors.red,
                ),
              ),
                            ClipPath(
                clipper: Wave02PathClipper(),
                child: Container(
                  height: 490,
                  color: Colors.blue,
                ),
              ),

              /*             ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  height: 380,
                  color: Colors.lightBlue[100],
                ),
              ),
              ClipPath(
                clipper: WaveClipperOne(
                    //flip: true
                    ),
                child: Container(
                  height: 350,
                  color: Colors.lightBlue[400],
                ),
              ),
              ClipPath(
                clipper: WaveClipperTwo(
                  flip: true,
                ),
                child: Container(
                  height: 375,
                  color: Colors.lightBlue.withOpacity(0.3),
                ),
              ), */
            ],
          ),
        ));
  }
}
