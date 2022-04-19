import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var titleTextStyle = GoogleFonts.robotoMono(
  fontSize: 72,
  color: Colors.black );



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Sanity in the times of COVID-19",
      home: CovidWebsite(),
    );
  }
}

class CovidWebsite extends StatelessWidget {
  const CovidWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SingleChildScrollView(
        child: Column ( 
          children: <Widget>[ 

            //Title box
            Container(  
              color: Colors.blue,
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 100),
              child: Align (
                alignment: Alignment.centerLeft,
                child:Text(
                  "Sanity in the times\nof COVID-19",
                  style: titleTextStyle,
                ),
              ),
            ),

            // Navbar
            Container(
              color: Colors.teal,
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: const <Widget>[
                  FractionallySizedBox( 
                    heightFactor: 1,
                    widthFactor: 0.1,
                  )
                ],
              ),
            )


          ]
        ),
      ),
    );
  }
}