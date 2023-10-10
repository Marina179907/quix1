import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quix/utils/app_asets.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home";
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row (
          children: [
            Image.asset(AppAssets.logo),
            Text( "Moody" ,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
            Container (
             margin: EdgeInsets.only(left: 200),
              child :
                badges.Badge(
                badgeContent: ColoredBox(color: Colors.red,),
                child: Icon (Icons.notifications , color: Colors.black),
            )
            )
          ],
        )
      ),

        //backgroundColor: Colors.transparent,
        bottomNavigationBar: buildBottomNavigatinBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Text("Hello, ", style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 25 ),),
              Text("Sara Rose," ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25 ),),
            ],
          ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("How are you felling today ?, ", style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 25 ),),

                ],
              )),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Row(
                children: [

                  Expanded(child: Image(image: AssetImage(AppAssets.love)),),
                  Expanded(child:Image(image: AssetImage(AppAssets.cool))),
                  Expanded(child:Image(image: AssetImage(AppAssets.happy))),
                  Expanded(child:Image(image: AssetImage(AppAssets.sad)),)
                  
                ]
            ),

          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(child: Text("Features", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                Text ("See more", style: TextStyle(fontSize: 15, color: Colors.green), ),
                Icon(Icons.arrow_forward_ios , color: Colors.green,),
              ],
            ),
          ),
          Container(

            color: Colors.cyanAccent,
            child: Row(
              children: [
                SizedBox(
                  width :138,
                  child :
                  Text("Positive Vibes Boost Your mode with Positive vibes", style: TextStyle(color: Colors.black26, fontWeight: FontWeight.bold, fontSize: 15,)),
                ),
                SizedBox(
                  width: 50,
                  child:
                  Icon(Icons.play_circle_fill )),
                Expanded(child: Image(image: AssetImage(AppAssets.girl),))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(child: Text("Excercise", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                Text ("See more", style: TextStyle(fontSize: 15, color: Colors.green), ),
                Icon(Icons.arrow_forward_ios , color: Colors.green,),
              ],
            ),
          ),


        ],
      ),
        );

  }
  Widget buildBottomNavigatinBar() => Theme (
    data: ThemeData( canvasColor:Colors.blueGrey),
    child :
      BottomNavigationBar(
      items:const [
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icHome)) , label: "Home"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icGrid)) , label: "Grid"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icCalendar)),label: "Calendar"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icUser)), label: "User"),
      ]
  )
  );

}