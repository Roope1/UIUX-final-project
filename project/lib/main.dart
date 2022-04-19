/// Group: FP LPR Group 2
/// Title: Sanity in the times of COVID-19

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var titleTextStyle = GoogleFonts.robotoMono(
  fontSize: 72,
  color: Colors.black );

var buttonTextStyle = GoogleFonts.robotoMono(
  fontSize: 30,
  color: Colors.black);


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

            // Navigation bar
            Container(
              
              color: Colors.teal,
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                // Navigation bar buttons
                children:  <Widget>[
                  Container( 
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Text("Social", style: buttonTextStyle),
                  ),

                  Container( 
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Text("Physical", style: buttonTextStyle),
                  ),

                  Container( 
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Text("Mental", style: buttonTextStyle),
                  ),

                  Container( 
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Text("Resources", style: buttonTextStyle),
                  ),
                
                ],
              ),
            ),

            // Actual page content
            Column ( 
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 300,  
                  width: 600, 
                  color: Colors.amber,
                  child: Column(children: [
                    Text("Social", style: buttonTextStyle),
                    //Actual text
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: GoogleFonts.robotoMono(fontSize: 16),
                    )
                 ],
                 )
               ),
                Container(
                  alignment: Alignment.center,
                  height: 300,  
                  width: 600, 
                  color: Colors.amber,
                  child: Column(children: [
                    Text("Social", style: buttonTextStyle),
                    //Actual text
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: GoogleFonts.robotoMono(fontSize: 16),
                    )
                 ],
                 )
               ),
                Container(
                  alignment: Alignment.center,
                  height: 300,  
                  width: 600, 
                  color: Colors.amber,
                  child: Column(children: [
                    Text("Social", style: buttonTextStyle),
                    //Actual text
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: GoogleFonts.robotoMono(fontSize: 16),
                    )
                 ],
                 )
               ),
                Container(
                  alignment: Alignment.center,
                  height: 300,  
                  width: 600, 
                  color: Colors.amber,
                  child: Column(children: [
                    Text("Social", style: buttonTextStyle),
                    //Actual text
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: GoogleFonts.robotoMono(fontSize: 16),
                    )
                 ],
                 )
               ),

               //Title
              ],
            )
          ],
        )  
      ),
    );
  }
}