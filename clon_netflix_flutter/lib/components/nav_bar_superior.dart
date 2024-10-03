import 'package:flutter/material.dart';
class NavBarSuperior extends StatelessWidget{
  const NavBarSuperior({super.key});
  final fontSizeTopTitle=15.0;
    @override
      Widget build(BuildContext context){
      return Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/netflix_logo.png",
        width: 30,height: 30,),
        Text("Catálogo",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: fontSizeTopTitle,
          color:Colors.white),),
          
        Text("Películas",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: fontSizeTopTitle,
          color:Colors.white),),
          
        Text("Mi lista",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: fontSizeTopTitle,
          color:Colors.white),)
        ],
      );
    }
  }
