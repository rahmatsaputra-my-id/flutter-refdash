import 'package:flutter/material.dart';
import 'package:dashdesign1/detailspage.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xFFFd4F99)
                ),
                child: Center(
                  child: Icon(
                    Icons.filter_list, color: Colors.white,
                  ),
                ),
              ),

              Text(
                'Home',
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    textStyle: TextStyle(color: Colors.white)
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0XFF353535)
                ),
                child: Center(
                  child: Icon(
                    Icons.bookmark_border,color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: MediaQuery.of(context).size.height - 156.0,
          child: ListView(
            children: <Widget>[
              _buildListItem('images/japan.jpg','Japan','Explore the land of the rising sun'),
              _buildListItem('images/kyoto.jpg','Kyoto','Explore the old building of Kyoto'),
              _buildListItem('images/canada.jpg','Canada','Explore the vast forests of Canada'),
            ],
          ),
        )
      ],
    );
  }
}

_buildListItem(String imgPath,String country, String description) {
  return Padding(
    padding: EdgeInsets.all(15),
    child: Stack(
      children: <Widget>[
        Container(
          height: 300,
        ),
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6),BlendMode.darken
                )
            ),
          ),
        ),
        Container(
          height: 300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  country,
                  style: GoogleFonts.montserrat(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      textStyle: TextStyle(
                          color: Colors.white
                      )
                  ),
                ),
                Text(
                  description,
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      textStyle: TextStyle(
                          color: Colors.white
                      )
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                    onTap: () {
//                      Navigator.push(context, MaterialPageRoute(
//                            builder: (context) => DetailsPage(imgPath: imgPath, title: country)
//                          )
//                      );
                    },
                    child: Container(
                        height: 50.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Center(
                            child: Text('Explore now',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                        color: Color(0xFFFD4F99)))))))
              ],
            ),
          ),
        )
      ],
    ),
  );
}
