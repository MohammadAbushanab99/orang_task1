import 'package:flutter/material.dart';

//import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(
          clipBehavior: Clip.none,
          children: [
        Positioned(
            top: -50,
            left: 220,
            child: Container(
              height: 200,
              width: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                color: Color(0xFFF361A8),
              ),
            )),
        Positioned(
          top: -80,
          left: -50,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(250),
              color:const Color(0xFFE53B9B),
            ),
          ),
        ),
        Positioned(
            top: 20,
            left: 20,
            child: Text(
              "dribblee",
              style: GoogleFonts.pacifico(
                  textStyle: const TextStyle(fontSize: 50, color: Colors.white)),
            )),
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        icon:const Icon(
                          Icons.email,
                          color: Color(0xFFFF4891),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade100)),
                        labelText: "Email",
                        labelStyle: const TextStyle(color: Colors.grey),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.vpn_key,
                          color: Color(0xFFFF4891),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade100)),
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                      child: const Text(
                        "FORGOT PASSWORD?",
                        style:
                            TextStyle(color: Color(0xFFFF4891), fontSize: 11),
                      ))),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: Container(
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),

                            onTap: () {},
                            child: const Center(
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                                colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: const Image(
                        image: AssetImage("assets/facebook2.png"),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child:const Image(
                        image: AssetImage("assets/twitter.png"),
                      ),
                    ),
                  ],
                ),
              ),
              //asdasdas
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "DON'T HAVE AN ACCOUNT ? ",
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    " SIGN UP",
                    style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFFFF4891),
                        fontWeight: FontWeight.w700),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
