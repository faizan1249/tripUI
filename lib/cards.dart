import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
import 'reuseable.dart';


class cards extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(right: 20.0, top: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0, top: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: Text(
                "Boarding  Cards",
                style: TextStyle(
                  fontSize: 44.0,
                  fontFamily: 'times',
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
       ReuseableCard(
                DepartCountry: "NYC",
                DepartCity: "New York",
                DepartTime: "12 January, 2021",

                ArriveCountry: "SFO",
                ArriveCity: "San Francisco",
                ArriveTime: "2 Adults",

              ),

            
      ReuseableCard(
                DepartCountry: "LAS",
                DepartCity: "Las Vegas",
                DepartTime: "24 February, 2021",

                ArriveCountry: "BOS",
                ArriveCity: "Boston",
                ArriveTime: "1 Adult",
              ),

      ReuseableCard(
                DepartCountry: "LAX",
                DepartCity: "Los Anglese",
                DepartTime: "9 May, 2021",

                ArriveCountry: "OMA",
                ArriveCity: "Omaha",
                ArriveTime: "2 Adults, 1 Child",
              ),


            SingleChildScrollView(
              child:ReuseableCard(
                DepartCountry: "AUS",
                DepartCity: "Austin",
                DepartTime: "12 January, 2021",

                ArriveCountry: "IND",
                ArriveCity: "Indianapolis",
                ArriveTime: "4 Adults",
              ),
            ),


          ],
        ),
      ),
    );
  }
}

