import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

class destinations extends StatelessWidget {
  const destinations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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



      //Now Here Body Portion Stars
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15.0),
            child: Text(
              "SAVED Destinations",
              style: TextStyle(
                fontSize: 38.0,
                fontFamily: 'times',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),



          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(

                    children: <Widget>[
                      Expanded(
                        child: ReuseableContainer(
                          icon: Icons.calendar_today,
                          date: "12 March, 2021",
                          country: "NYC",
                          city: "New York",
                          distance: "3200KM",
                          img: "london-bridge.jpg",
                          distanceIcon: Icons.location_on,
                        ),
                      ),
                      // SizedBox(height: 10.0),
                      Expanded(
                        flex: 2,
                        child: ReuseableContainer(
                          icon: Icons.calendar_today,
                          date: "28 May, 2021",
                          country: "SFO",
                          city: "San Francico",
                          distance: "1376 KM",
                          img: "london-city.jpg",
                          distanceIcon: Icons.location_on,),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 10.0,
                // ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: ReuseableContainer(
                          icon: Icons.calendar_today,
                          date: "24 June, 2021",
                          country: "DEN",
                          city: "Denver",
                          distance: "6409 KM",
                          img: "city.jpg",
                          distanceIcon: Icons.location_on),
                      ),
                      // SizedBox(height: 10.0),
                      Expanded(
                        child: ReuseableContainer(
                            icon: Icons.calendar_today,
                            date: "28 May, 2021",
                            country: "NYC",
                            city: "New York",
                            distance: "3200KM",
                            img: "mountains.jpg",
                            distanceIcon: Icons.location_on,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





class ReuseableContainer extends StatelessWidget {

  ReuseableContainer({
    required this.distanceIcon,
    required this.icon,
    required this.date,
    required this.country,
    required this.city,
    required this.distance,
    required this.img,

  });
  final IconData icon;
  final IconData distanceIcon;
  final String date;
  final String country;
  final String city;
  final String distance;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            Expanded(
              // flex: 2,
              child: ChildContainer(
                city_Text: "",
                text: date,
               icon: icon,
                text_style: TextStyle(
                  color:Color(0xFFF1F2F4),
                ),
              ),
            ),

            Expanded(
              // flex: 2,
              child: ChildContainer(
                text: country,
                city_Text: city ,
                text_style: TextStyle(
                  fontSize: 24.0,
                  color:Color(0xFFF1F2F4),
                ),
              ),
            ),

            Expanded(
              // flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      ChildContainer(city_Text: "",text:"",icon: distanceIcon,),
                      ChildContainer(city_Text:"",text: distance,text_style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFFF1F2F4),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      margin: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            img,
          ),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}



class ChildContainer extends StatelessWidget {
  ChildContainer({this.icon, required this.text, this.text_style,required this.city_Text});
  final IconData? icon;
  final String text;
  final String city_Text;
  final TextStyle? text_style;
  @override
  Widget build(BuildContext context) {
 
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Icon(icon,color: Color(0xFFF1F2F4),size: 18.0,),
          Text("$text",
          style: text_style,
          ),
          Text("$city_Text",
            style: TextStyle(
              fontSize: 12,
            ),
          ),

        ],
     
    );
  }
}
