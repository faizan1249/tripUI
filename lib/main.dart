import 'package:flutter/material.dart';
import 'destinations.dart';
import 'cards.dart';
void main() {
  runApp(Ticket_Main());
}
class Ticket_Main extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        primaryColor: Color(0xFFFFFFFF),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFFFFFFF),
        )
      ),
      home: cards(),
    );
  }
}


