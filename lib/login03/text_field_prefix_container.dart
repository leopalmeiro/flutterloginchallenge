import 'package:flutter/material.dart';

class TextFieldPrefixContainer extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData icon;
  const TextFieldPrefixContainer({@required this.hintText, @required this.obscureText, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white54),
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
        prefixIcon: Container(
          padding: EdgeInsets.only(top: 16, bottom: 16),
          margin: EdgeInsets.only(right: 8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Icon(
            icon,
            color: Colors.lightGreen,
          ),
        ),
      ),
    );
  }
}
