/// Group: FP LPR Group 2
/// Title: Sanity in the times of COVID-19

import 'package:flutter/material.dart';

var titleTextStyle = const TextStyle(
    fontFamily: "RobotoMono", 
    fontSize: 72, 
    color: Colors.black);

var buttonTextStyle = const TextStyle(
    fontFamily: "RobotoMono",
    fontSize: 30, 
    color: Colors.black);

const double textBoxWidth = 1000;

var textBoxDec = const BoxDecoration(
  color: Color(0xffDFF3FF),
  borderRadius: BorderRadius.all(
    Radius.circular(12.0),
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.black87,
      blurRadius: 10.0,
    )
  ]
);

var textBoxPadding = const EdgeInsets.symmetric(vertical: 10, horizontal: 20);
var textBoxMargin = const EdgeInsets.symmetric(horizontal: 10, vertical: 50);

var contentStyle = const TextStyle(fontFamily: "RobotoMono", fontSize: 16);
enum Active { social, mental, physical, resources }
var activePage = Active.social; // By default social page is at the top

ScrollController _controller = ScrollController();

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
        controller: _controller,
        child: Column(
          children: <Widget>[
            //Title box
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/Images/BGImage.jpg"),
                fit: BoxFit.fitHeight,
              )),
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 100),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
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
              child: Column(
                children: const [
                  InformationContent("Social"),
                  InformationContent("Physical"),
                  InformationContent("Mental"),
                  InformationContent("Resources"),
                ],
              ),
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
    return Ink(
      color: Colors.teal,
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        // Navigation bar buttons
        children: <Widget>[
          NavButton("Social", activePage == Active.social),
          NavButton("Mental", activePage == Active.mental),
          NavButton("Physical", activePage == Active.physical),
          NavButton("Resources", activePage == Active.resources),
        ],
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  final String title;
  final bool status;

  const NavButton(this.title, this.status, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Inkwell documentation: https://api.flutter.dev/flutter/material/InkWell-class.html
      child: Container(
        alignment: Alignment.center,
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Text(
          title,
          style: buttonTextStyle,
        ),
      ),
      onTap: () {
        // print("clicked $title"); // DEBUG PURPOSES ONLY
        // I know its bad code below, but it works
        switch (title) {
          case "Social":{
              activePage = Active.social;
              break;
          } case "Mental":{
              _controller.animateTo(1000,
                  duration: const Duration(seconds: 2),
                  curve: Curves.slowMiddle);
              activePage = Active.mental;
              break;
          } case "Physical":{
              activePage = Active.physical;
              break;
          } case "Resources":{
              activePage = Active.resources;
              break;
          }
        }
      }
    );
  }
}

class InformationContent extends StatelessWidget {

  final String subject;

  const InformationContent(this.subject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: textBoxDec,
      padding: textBoxPadding,
      margin: textBoxMargin,
      alignment: Alignment.center,
      width: textBoxWidth,
      child: getContent(subject)
    );
  }
}

Column getContent(String subject){
  if (subject == "Social") {
    return Column( 
      children: [
        Text("Social", style: buttonTextStyle),
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            style: contentStyle,
        )
      ],
    );
  } else if (subject == "Physical") {
    return Column( 
      children: [
        Text("Physical", style: buttonTextStyle),
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            style: contentStyle,
        )
      ],
    );
  } else if (subject == "Mental") {
    return Column( 
      children: [
        Text("Mental", style: buttonTextStyle),
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            style: contentStyle,
        )
      ],
    );
  } else {
    return Column( 
      children: [
        Text("Resources", style: buttonTextStyle),
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            style: contentStyle,
        )
      ],
    );
  }
}

