import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:history_app/Heroes/heroesScreen.dart';
import 'package:history_app/Map/PakistanMap.dart';
import 'package:history_app/Quiz/quiz1/quiz1.dart';
import 'package:history_app/Quiz/quiz5/quiz5.dart';

class Content extends StatelessWidget {

  static const String id = "Content";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/contentBackground.png")
          )
        ),
        // color: Colors.green,
        child: Column(

          children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: Text('Content', style: TextStyle(fontSize: 30, fontFamily: "Bold",letterSpacing: 1),),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContentButton('History', Quiz1.id),
                SizedBox(width: 50,),
                ContentButton("Heroes", HeroesScreen.id)

              ],
            ),
            SizedBox(height: 25,),
            // SizedBox(height: 40,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContentButton('Geography', PakistanMap.id),
                SizedBox(width: 199,),
                ContentButton('Human Rights', Quiz5.id)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContentButton('Cultural Dresses', 'CultureDress1'),
                SizedBox(width: 50,),
                ContentButton('Cultural Music', 'CultureMusic')
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class ContentButton extends StatelessWidget {

  ContentButton([this.name, this.routeId]);
  final String name;
  final String routeId;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      onTap: (){
        Navigator.pushNamed(context, '$routeId');
        print('Hello');
        },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.lightGreen),
          color: Colors.green[200]
        ),
        child: Center(child: Text("$name",maxLines: 3, textAlign: TextAlign.center ,style: TextStyle(fontFamily: "Regular" ,fontWeight: FontWeight.bold,fontSize: 15, letterSpacing: 1.2,),)),
      ),
    );
  }
}
