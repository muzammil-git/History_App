import 'dart:async';
import 'package:flutter/material.dart';
import 'package:history_app/MainScreen/Login.dart';

class StartupScreen extends StatefulWidget {

  static const String id= "SplashScreen";

  @override
  _StartupScreenState createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {

  String _appVersion = 'Version: 1.0';
  String platform = "Android";
  final int futureDelay = 5;

  void pageNavigate() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }

  _routeTimer() async {
    var _duration = Duration(seconds: futureDelay);
    return Timer(_duration, pageNavigate);
  }

  @override
  void initState() {
    super.initState();
    _routeTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: InkWell(
          child: Stack(
            // fit: StackFit.expand,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 7,
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 100,),
                            Text('History of Pakistan',
                              style: TextStyle(fontFamily: "Quote", fontWeight: FontWeight.bold,
                                  fontSize: 32),),
                            Image.asset(
                              'assets/images/Logo/logo.jpeg',
                              height: 350,
                              width: 350,
                            ),
                            //TODO:Quotes
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('"Ideas shape the course of history."',
                              style: TextStyle(
                                letterSpacing: 1.7,
                                fontSize: 22,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontFamily: "StyleQuote",
                                // fontStyle: FontStyle.italic
                              ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right:40.0),
                                  child: Text('-John Maynard Keynes',
                                    style: TextStyle(
                                      letterSpacing: 1.4,
                                      fontSize: 12,
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Bold",
                                      // fontStyle: FontStyle.italic
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 20.0),
                            // ),
                          ],
                        )),
                  ),
                  // SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top:05.0),
                    child: CircularProgressIndicator(strokeWidth: 3, ),
                  ),
                  // SizedBox(height: 40,),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Spacer(),
                              RichText(text: TextSpan(text: _appVersion,
                                  style: TextStyle(color: Colors.black, fontSize: 15,decoration: TextDecoration.underline))),
                              Spacer(flex: 4,),
                              RichText(text: TextSpan(text: platform,
                                  style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.underline))),
                              Spacer(),
                            ]
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
            overflow: Overflow.clip,//handles the overflow in the stack and clips inside the bound
          ),
        ),
      ),
    );
  }
}