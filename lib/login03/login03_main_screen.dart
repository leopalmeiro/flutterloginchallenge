import 'package:flutter/material.dart';
import 'package:loginChallengesApp/login03/text_field_prefix_container.dart';
import 'package:loginChallengesApp/routes/app_routes.dart';

class Login03MainScreen extends StatefulWidget {
  final String title;
  Login03MainScreen({@required this.title});

  @override
  _Login03MainScreenState createState() => _Login03MainScreenState();
}

class _Login03MainScreenState extends State<Login03MainScreen> {
  @override
  Widget build(BuildContext context) {
    //double _height = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)),
      ),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green[300], Colors.green[600]],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFieldPrefixContainer(
                hintText: 'Enter you email',
                obscureText: false,
                icon: Icons.person,
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldPrefixContainer(
                hintText: 'Enter you password',
                obscureText: true,
                icon: Icons.lock,
              ),
              SizedBox(
                height: 70,
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  color: Colors.white,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.lightGreen),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(color: Colors.white70, fontSize: 10),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
