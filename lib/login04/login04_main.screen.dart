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
              Container(
                child: ClipPath(
                  clipper: Wave03PathCLipper(),
                  child: Container(
                    height: 430,
                    color: Colors.red[100].withOpacity(.8),
                  ),
                ),
              ),
              ClipPath(
                clipper: Wave01PathClipper(),
                child: Container(
                  height: 405,
                  color: Colors.red[200].withOpacity(.4),
                ),
              ),
              ClipPath(
                clipper: Wave02PathClipper(),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.red, Colors.pink[500]]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
