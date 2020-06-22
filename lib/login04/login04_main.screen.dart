import 'package:flutter/material.dart';
import 'package:loginChallengesApp/login04/login04_fields_component.dart';
import 'package:loginChallengesApp/login04/login04_header_component.dart';
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
                clipper: Wave03PathCLipper(),
                child: Container(
                  height: 370,
                  color: Colors.red[100].withOpacity(.8),
                ),
              ),
              ClipPath(
                clipper: Wave01PathClipper(),
                child: Container(
                  height: 355,
                  color: Colors.red[200].withOpacity(.4),
                ),
              ),
              ClipPath(
                clipper: Wave02PathClipper(),
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.red, Colors.pink[500]]),
                  ),
                ),
              ),
              ListView(
                children: <Widget>[
                  Login04HeaderComponent(),
                  SizedBox(height: 50,),
                  Login04FieldComponents(),
                ],
              ),
            ],
          ),
        ));
  }
}
