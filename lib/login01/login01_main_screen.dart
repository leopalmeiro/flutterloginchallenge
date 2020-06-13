import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginChallengesApp/login01/login_signup_screen.dart';
import 'package:loginChallengesApp/routes/app_routes.dart';

class Login01MainScreen extends StatefulWidget {
  final String title;

  const Login01MainScreen({this.title});
  @override
  _Login01MainScreenState createState() => _Login01MainScreenState();
}

class _Login01MainScreenState extends State<Login01MainScreen> {
  int _selectedScreenIndex = 0;
  bool _formVisible = false;
  //List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
  }

  void _openForm(bool opened) {
    setState(() {
      _formVisible = true;
    });
  }

  void _closeForm() {
    setState(() {
      _formVisible = !_formVisible;
    });
  }

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.srcOver),
              child: Image.network(
                'https://cdn.pixabay.com/photo/2013/12/11/13/49/holiday-226830_960_720.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            //alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: kToolbarHeight + 40,
                ),
                Center(
                  child: Text(
                    'Welcome',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 35,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Welcome to this awesome login App. \n You are awesome',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Spacer(),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Text(
                          'Login',
                        ),
                        onPressed: () {
                          _openForm(true);
                          _selectScreen(0);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: RaisedButton(
                        child: Text('SignUp'),
                        color: Colors.grey,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          //side: BorderSide(color: Colors.white),
                        ),
                        onPressed: () {
                          _openForm(true);
                          _selectScreen(1);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                OutlineButton.icon(
                  borderSide: BorderSide(color: Colors.red),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    //side: BorderSide(color: Colors.white),
                  ),
                  icon: Icon(FontAwesomeIcons.google),
                  label: Text('Continue with Google'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: (_formVisible)
                ? LoginSignUpScreen(
                    key: ValueKey<int>(_selectedScreenIndex),
                    formIndex: _selectedScreenIndex,
                    onClose: _closeForm,
                    selectScreen: _selectScreen,
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
