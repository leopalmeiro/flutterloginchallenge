import 'package:flutter/material.dart';

class Login04HeaderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.only(top: 20),
      child: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/vegetable.png',
              width: MediaQuery.of(context).size.width / 2,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Food App ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );

    /* Container(
      height: 200,
      width: MediaQuery.of(context).size.width /2,
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(),
      color: Colors.black45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('assets/images/vegetable.png'), alignment: Alignment.center, ),
        ],
      ),
    ); */
  }
}
