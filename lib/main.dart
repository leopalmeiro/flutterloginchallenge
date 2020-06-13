import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginChallengesApp/login_signup_screen.dart';

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
      home: MyHomePage(title: 'Login Challenge 01'),
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
  int _selectedScreenIndex = 0;
  bool _formVisible = false;
  //List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
/*     _screens = [
      {
        'title': 'Login',
        'screen': LoginForm(
          onClose: _closeForm,
          selectScreen: _selectScreen,
        ),
      },
      {'title': 'SignUp', 'screen': SignUpForm()},
    ]; */
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
