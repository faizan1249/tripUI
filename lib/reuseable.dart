import 'package:flutter/material.dart';

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

        width: double.infinity,
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(

          color: Colors.white, //background color of box
          boxShadow: [

            BoxShadow(
              color: Colors.grey,
              blurRadius: 25.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              offset: Offset(
                15.0, // Move to right 10  horizontally
                15.0, // Move to bottom 10 Vertically
              ),
            ),

          ],
          borderRadius: BorderRadius.circular(12.0),



        ),
        child: Row(

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),

                child: DepartWidget(
                  DepartCountry: DepartCountry,
                  DepartCity: DepartCity,
                  DepartTime: DepartTime,
                ),

            ),
            Padding(
              padding: const EdgeInsets.all(10.0),

                child: ArriveWidget(
                  ArriveCountry: ArriveCountry,
                  ArriveCity: ArriveCity,
                  ArriveTime: ArriveTime,
                ),

            ),

            Expanded(
                child: flightWidget(),
            ),

          ],
        ),
      ),
    );
  }
}

class flightWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.flight),
      ],
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(ArriveCountry,style: countryText,),
        Text(ArriveCity),
        SizedBox(height: 10.0,),
        Text(ArriveTime),
      ],
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(DepartCountry,style: countryText,),
        Text(DepartCity),
        SizedBox(height: 10.0,),
        Text(DepartTime),
      ],
    );
  }
}