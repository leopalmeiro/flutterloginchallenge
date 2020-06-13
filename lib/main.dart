import 'package:flutter/material.dart';
import 'package:loginChallengesApp/login01/login01_main_screen.dart';
import 'package:loginChallengesApp/login02/login02_main_screen.dart';
import 'package:loginChallengesApp/models/apps_info.dart';
import 'package:loginChallengesApp/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Login Challenge 01'),
      routes: {
        AppRoutes.HOME: (ctx) => MyHomePage(title: 'Login Challenges'),
        AppRoutes.LOGIN01: (ctx) =>
            Login01MainScreen(title: 'Login Challenge 01'),
                    AppRoutes.LOGIN02: (ctx) =>
            Login02MainScreen(title: 'Login Challenge 02'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<AppsInfo> _listApps = [
    AppsInfo(
        text: 'Profile Challenge 01',
        imagePath: 'assets/images/profile01.png',
        routeName: AppRoutes.LOGIN01),
    AppsInfo(
        text: 'Profile Challenge 02',
        imagePath: 'assets/images/profile02.png',
        routeName: AppRoutes.LOGIN02),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _listApps.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.of(context)
                  .pushReplacementNamed(_listApps[index].routeName),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 4.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          _listApps[index].imagePath,
                          height: 200,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      _listApps[index].text,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
/*         child: Column(
          children: <Widget>[
            InkWell(
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed(AppRoutes.LOGIN01),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 4.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/profile01.png',
                          height: 200,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Profile Challenge 01',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ), */
      ),
    );
  }
}
