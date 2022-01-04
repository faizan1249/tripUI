import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
import 'reuseable.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,

        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 400,
                    child: Column(
                      children: [

                        Image.network("https://scontent.flyp1-1.fna.fbcdn.net/v/t39.30808-6/271154546_1313824152364520_3770266016351901399_n.jpg?_nc_cat=105&_nc_rgb565=1&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeFIq5-9tk8sr6ZpzpRHrqytVBnOaKuogzJUGc5oq6iDMnWn0-5vMeGTFfYmsyFEC-uc_wLI2Tv7BgI_PzPO0y4b&_nc_ohc=6ZFqAM7tYP0AX9kX-qT&_nc_ht=scontent.flyp1-1.fna&oh=00_AT8EpN7JInVVVYZ8dgNmiKchU2OGNw0sk8FrgsAtprdMNw&oe=61D50C96",
                        fit: BoxFit.fitHeight,
                        semanticLabel: "Image Contain a Tower",),

                      ],
                    ),
                  )
                )
              ],
            )),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "NEW YORK",
                      style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'times',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting"
                            " industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, ",
                    style: TextStyle(
                      color: Color(0xFF525357),
                      fontSize: 18.0,
                    ),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
