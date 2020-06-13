import 'package:flutter/material.dart';
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
        title: Text(widget.title),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 400,
            child: RotatedBox(
              quarterTurns: 2,
              child: WaveWidget(
                config: CustomConfig(durations: [
                  19440,
                  10800
                ], heightPercentages: [
                  0.20,
                  0.25
                ], gradients: [
                  [Colors.red, Colors.blue],
                  [Colors.black, Colors.pink],
                ]),
                size: Size(double.infinity, double.infinity),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
