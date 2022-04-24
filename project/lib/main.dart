/// Group: FP LPR Group 2
/// Title: Sanity in the times of COVID-19

import 'package:flutter/material.dart';

var titleTextStyle = const TextStyle(
    fontFamily: "OpenSans-Regular", 
    fontSize: 100, 
    color: Colors.white);

var buttonTextStyle = const TextStyle(
    fontFamily: "OpenSans-Regular",
    fontSize: 32, 
    color: Colors.black);
    
const double textBoxWidth = 1200; //Hard coded width because flutter makes it overly complicated to do percentages of page widht

var textBoxDec = const BoxDecoration(
  color: Color(0xffDFF3FF),
  borderRadius: BorderRadius.all(
    Radius.circular(12.0),
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.black87,
      blurRadius: 10.0,
      offset: Offset(0, 1)
    )
  ]
);

var textBoxPadding = const EdgeInsets.symmetric(vertical: 10, horizontal: 20);
var textBoxMargin = const EdgeInsets.symmetric(horizontal: 10, vertical: 50);

var contentTitleStyle = const TextStyle(fontFamily: "OpenSans-Bold", fontSize: 20, fontWeight: FontWeight.bold);
var contentStyle = const TextStyle(fontFamily: "OpenSans-Regular", fontSize: 20);

ScrollController  _controller = ScrollController();
var navScrollCurve = Curves.easeOut;

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: <Widget>[
            //Title box
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Images/light.png"),
                  fit: BoxFit.fitWidth, 
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 20,
                    blurStyle: BlurStyle.normal,
                  )
                ],
              ),
              height: size.height / 1.5,
              width: size.width,
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
                    Color(0xff66bbc2),
                    Colors.white,
                  ]
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 20,
                  )
                ],
              ),
              child: Column(
                children: const [
                  IngressText(),
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
      color: const Color(0xff00A3A3),
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        // Navigation bar buttons
        children: const <Widget>[
          NavButton("Social"),
          NavButton("Physical"),
          NavButton("Mental"),
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
        // I know its bad code below, but it works
        switch (title) {
          case "Social":{
            _controller.animateTo(700,
              duration: const Duration(seconds: 2),
              curve: navScrollCurve);             
            break;
          } case "Physical":{
            _controller.animateTo(1100,
              duration: const Duration(seconds: 2),
              curve: navScrollCurve);              
            break;
          }case "Mental":{
            _controller.animateTo(1500,
              duration: const Duration(seconds: 2),
              curve: navScrollCurve);              
            break;
          } case "Resources":{
            _controller.animateTo(1750, 
              duration: const Duration(seconds: 2),
              curve: navScrollCurve);
            break;
          }
        }
      }
    );
  }
}

class IngressText extends StatelessWidget {
  const IngressText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
      //decoration: textBoxDec,
      padding: textBoxPadding,
      margin: textBoxMargin,
      width: textBoxWidth,
      child: const Text( 
        "The object of this website is to inform LUT students about mental wellbeing during the COVID-19 pandemic and its restrictions. Down below are some tips and resources on how to cope in the world of COVID restrictions.",
        style: TextStyle(
          fontFamily: "OpenSans-Regular",
          fontSize: 26,
          color: Color.fromARGB(255, 70, 70, 70),
        ),
        textAlign: TextAlign.center,
      ),
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
      width: textBoxWidth,
      child: getContent(subject)
    );
  }
}

/// Getter function for different kinds of text boxes with information in them.
/// Did it like this so I don't need to repeat a lot of styling code seen in the Information content class
Column getContent(String subject){
  if (subject == "Social") {
    return Column( //SOCIAL
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Social", style: buttonTextStyle),
        Text("\nFind new ways to connect with friends.",
            style: contentTitleStyle,),
        Text("Social media is great way to connect with your friends, when you can't see them live. Pandemic can cause stress and it's better to keep in touch with your family and friends, to get emotional support.",
            style: contentStyle),
        Text("\nSocial connections help with physical health",
            style: contentTitleStyle),
        Text("Isolated people can feel low or anxious. It's better to reach out to a friend than turn to less positive coping strategies, such as drinking alcohol.",
            style: contentStyle),
        Text("\nMake online study circles",
            style: contentTitleStyle),
        Text("Studying together online can help you maintain your daily routine and social relations.",
            style: contentStyle),

      ],
    );
  } else if (subject == "Physical") {
    return Column( //PHYSICAL
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Physical", style: buttonTextStyle),
        Text("\nRemember to exercise",
            style: contentTitleStyle,
        ),
        Text("20 minutes of exercise a day can help lift your mood. You can for example, follow online exercise videos at home, when the gyms are closed or go outside for a walk.",
            style: contentStyle),
        Text("\nTry to get a good night's sleep",
            style: contentTitleStyle),
        Text("Sleeping enough is important and helps to maintain your overall health.",
            style: contentStyle),
        Text("\nEat well",
            style: contentTitleStyle),
        Text("Remember to eat healthy food even during the quarantine. Eating healthy has positive effects on your mood.",
            style: contentStyle),
      ],
    );
  } else if (subject == "Mental") {
    return Column(  // MENTAL
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Mental", style: buttonTextStyle),
        Text("\nRoutines",
          style: contentTitleStyle,
        ),
        Text("Maintaining your regular routine is vital to your mental health. Having predictability in life will make you feel more in control.",
          style: contentStyle
        ),
        Text("\nMedia",
          style: contentTitleStyle),
        Text("Constant news about COVID-19 may result in psychological distress. You can limit your social media exposure to COVID-19 if you feel like news affect your mental wellbeing.",
          style: contentStyle),
        Text("\nGive yourself time to relax",
        style: contentTitleStyle),
        Text("Even though it is important to study and enjoy hobbies, it's also important to recharge. Many people benefit from reading, listening to music or even yoga. Find a way to relax that works for you and do it regularly.",
          style: contentStyle),
      ],
    );
  } else {
    return Column( // RESOURCES
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Text("Resources", style: buttonTextStyle),
        Text("\nFinnish Student Health Service (FSHF / YTHS)",
            style: contentTitleStyle),
        Text("https://www.yths.fi/en/frontpage/",
            style: contentStyle),
        Text("\nStudent Union of LUT university (LTKY)",
            style: contentTitleStyle),
        Text("https://ltky.fi/en/",
            style: contentStyle),
        Text("\nHobbla",
            style: contentTitleStyle),
        Text("https://en.hobbla.fi/lappeenranta",
            style: contentStyle),
        Text("\nMayo Clinic",
            style: contentTitleStyle),
        Text("https://www.mayoclinic.org/diseases-conditions/coronavirus/in-depth/mental-health-covid-19/art-20482731",
            style: contentStyle),
        Text("\nSekasin247 chat (only in finnish)",
            style: contentTitleStyle),
        Text("https://sekasin247.fi/",
            style: contentStyle),
        Text("\nWorld Health Organisation (WHO)",
            style: contentTitleStyle),
        Text("https://www.who.int/teams/mental-health-and-substance-use/mental-health-and-covid-19",
            style: contentStyle),
      ],
    );
  }
}