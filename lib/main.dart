import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Ecommerce(),
    );
  }
}

class Ecommerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context).size;
    var plateforme = Theme.of(context).platform;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: 200,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 167, 12, 64)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Center(
                  child: CircleAvatar(
                    radius: 150,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Image.asset(
                      "images/obiStyle.png",
                      height: 175,
                      width: 175,
                    )),
              )
            ],
          ),
          SizedBox(width: 200),
          Column(
            children: [
              monText(
                  text: "Se connecter avec",
                  fontStyle: 20,
                  macouleur: Color.fromARGB(255, 105, 103, 103)),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 5, 51, 215),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook_outlined),
                    monText(
                        text: "Facebook",
                        fontStyle: 20,
                        macouleur: Colors.white)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                    color: Color.fromARGB(137, 94, 94, 95),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /*Image.asset(
                      "images/git.png",
                    ),*/
                    monText(
                        text: "Google", fontStyle: 20, macouleur: Colors.white)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /*Image.asset(
                      "images/git.png",
                    ),*/
                    monText(
                        text: "GitHub", fontStyle: 20, macouleur: Colors.white)
                  ],
                ),
              ),
              SizedBox(height: 40),
              monText(
                  text: "Inscription",
                  fontStyle: 20,
                  macouleur: Color.fromARGB(255, 167, 12, 64)),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  monText(
                      text: "Vous aveaz déjà un compte?",
                      fontStyle: 20,
                      macouleur: Color.fromARGB(255, 105, 103, 103)),
                  SizedBox(width: 5),
                  monText(
                      text: "Connectez-vous",
                      fontStyle: 20,
                      macouleur: Color.fromARGB(255, 167, 12, 64)),
                  SizedBox(width: 5),
                  Icon(Icons.login_rounded)
                ],
              ),
            ],
          ),
          Spacer(),
          monText(
              text:
                  "En continuant, vous acceptez les conditions d'utilisations et politiques de confidentialité",
              fontStyle: 10,
              macouleur: Colors.black)
        ],
      ),
    ));
  }

  CircleAvatar maPhoto2profie({required double rondeur}) {
    return CircleAvatar(
      radius: 52,
      backgroundColor: Colors.white,
      child: CircleAvatar(
          radius: 50,
          foregroundImage: NetworkImage(
              "https://thumbs.dreamstime.com/b/piano-%C3%A0-queue-sur-le-littoral-un-la-plage-de-129527738.jpg")),
    );
  }

  Image monImage({required double hauteur, required double largeur}) {
    return Image.asset(
      "images/beach.jpg",
      fit: BoxFit.cover,
      height: hauteur,
      width: largeur,
    );
  }

  Container monContainer({
    required double raideur,
    required Color couleur1,
    required double hhauteur,
    required double llargeur,
  }) {
    return Container(
      height: hhauteur,
      width: llargeur,
      decoration: BoxDecoration(
          color: couleur1,
          borderRadius: BorderRadius.all(Radius.circular(raideur))),
    );
  }

  Text monText(
      {required String text,
      required double fontStyle,
      required Color macouleur}) {
    return Text(
      text,
      style: TextStyle(
        color: macouleur,
        fontSize: fontStyle,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
