import 'package:flutter/material.dart';
import 'package:navigation/shades_page.dart';

class ShadeswithParams extends StatelessWidget{
  const ShadeswithParams({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
 final data =
     ModalRoute.of(context)!.settings.arguments as
 MaterialAccentColor;
 return ShadesPage(color: data,);
  }
}
