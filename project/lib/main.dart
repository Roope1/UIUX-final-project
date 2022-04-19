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
  
const double textBoxWidth = 800;

var textBoxDec = const BoxDecoration (
  color: Color(0xffDFF3FF),
  borderRadius: BorderRadius.all( 
    Radius.circular(12.0),
  ),
);

var textBoxPadding = const EdgeInsets.symmetric(
  vertical: 10, 
  horizontal: 20,
);

var textBoxMargin = const EdgeInsets.symmetric(
  horizontal: 10,
  vertical: 20
);

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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Images/BGImage.jpg"),
                  fit: BoxFit.fitHeight,
                  )
                
               ),
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
            const NavBar(),

            // Actual page content
            Container(
              width: double.infinity,
              decoration: const BoxDecoration( 
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue,
                    Colors.white,
                  ]
                )
              ),
              child: Column ( 
                children: const <Widget>[
                  SocialContent(),
                  PhysicalContent(),
                  MentalContent(),
                  ResourcesContent(),
                ],
              )
            ) 
          ],
        )  
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.teal,
     height: 70,
     width: MediaQuery.of(context).size.width,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,

     // Navigation bar buttons
       children:  const <Widget>[
         NavButton("Social"),
         NavButton("Mental"),
         NavButton("Physical"),
         NavButton("Resources"),
       ],
     ),
    );
  }
}

class NavButton extends StatelessWidget {
  final String title;

  const NavButton(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Text(title, style: buttonTextStyle),
    );
  }
}

class SocialContent extends StatelessWidget {
  const SocialContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: textBoxDec,
      padding: textBoxPadding,
      margin: textBoxMargin,
      alignment: Alignment.center,  
      width: textBoxWidth, 
      child : Column(children: [
        Text("Social", style: buttonTextStyle),
        //Actual text
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: GoogleFonts.robotoMono(fontSize: 16),
        )
       ],
      )
    );
  }
}

class PhysicalContent extends StatelessWidget {
  const PhysicalContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: textBoxDec,
      margin: textBoxMargin,
      padding: textBoxPadding,
      alignment: Alignment.center,
      width: textBoxWidth, 
      child : Column(children: [
        Text("Physical", style: buttonTextStyle),
        //Actual text
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: GoogleFonts.robotoMono(fontSize: 16),
        )
       ],
      )
    );
  }
}

class MentalContent extends StatelessWidget {
  const MentalContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: textBoxDec,
      padding: textBoxPadding,
      margin: textBoxMargin,
      alignment: Alignment.center, 
      width: textBoxWidth, 
      child : Column(children: [
        Text("Mental", style: buttonTextStyle),
        //Actual text
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: GoogleFonts.robotoMono(fontSize: 16),
        )
       ],
      )
    );
  }
}

class ResourcesContent extends StatelessWidget {
  const ResourcesContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: textBoxDec,
      padding: textBoxPadding,
      margin: textBoxMargin,
      alignment: Alignment.center,
      width: textBoxWidth, 
      child : Column(children: [
        Text("Resources", style: buttonTextStyle),
        //Actual text
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: GoogleFonts.robotoMono(fontSize: 16),
        )
       ],
      )
    );
  }
}