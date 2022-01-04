import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

const TextStyle countryText = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);



class ReuseableCard extends StatelessWidget {

  ReuseableCard({
    required this.DepartCity,
    required this.DepartCountry,
    required this.DepartTime,

    required this.ArriveCity,
    required this.ArriveCountry,
    required this.ArriveTime,
  });

  String DepartCountry;
  String DepartCity;
  String DepartTime;

  String ArriveCountry;
  String ArriveCity;
  String ArriveTime;





  @override
  Widget build(BuildContext context) {

    return Expanded(

      child: Container(
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white, //background color of box
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 25.0, // soften the shadow
              spreadRadius: 2.0, //extend the shadow
              offset: Offset(
                10.0, // Move to right 10  horizontally
                10.0, // Move to bottom 10 Vertically
              ),
            ),

          ],
          borderRadius: BorderRadius.circular(12.0),



        ),
        child: Row(
            children: <Widget>[
                DepartWidget(

                    DepartCountry: DepartCountry,
                    DepartCity: DepartCity,
                    DepartTime: DepartTime,

                ),
                ArriveWidget(
                  ArriveCountry: ArriveCountry,
                  ArriveCity: ArriveCity,
                  ArriveTime: ArriveTime,
                ),


              DottedLine(
                direction: Axis.vertical,
                dashColor: Colors.grey,
              ),


                 flightWidget(),


            ],
          ),
        ),

    );
  }
}

class flightWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
              Transform.rotate(
                angle: 90*pi/180,
                  child: Icon(Icons.flight)
              ),
        ],
      ),
    );
  }
}



class ArriveWidget extends StatelessWidget {
  ArriveWidget({
    required this.ArriveCity,
    required this.ArriveCountry,
    required this.ArriveTime,
  });

  String ArriveCountry;
  String ArriveCity;
  String ArriveTime;
  @override
  Widget build(BuildContext context) {

      return Expanded(
        child: Padding(

          padding: const EdgeInsets.only(right:8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(ArriveCountry,style: countryText,),
              Text(ArriveCity),
              SizedBox(height: 10.0,),
              Text(ArriveTime),
            ],
          ),
        ),
      );
  }
}

class DepartWidget extends StatelessWidget {

  DepartWidget({
    required this.DepartCity,
    required this.DepartCountry,
    required this.DepartTime,

  });

  String DepartCountry;
  String DepartCity;
  String DepartTime;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left:10.0,top: 7.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(DepartCountry,style: countryText,),
            Text(DepartCity),
            SizedBox(height: 10.0,),
            Text(DepartTime),
          ],
        ),
      ),
    );
  }
}