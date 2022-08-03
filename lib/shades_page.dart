import 'package:flutter/material.dart';
import 'package:navigation/list_item.dart';


class ShadesPage extends StatelessWidget {
  final MaterialAccentColor color;

  const ShadesPage({required this.color});


  @override
  Widget build(BuildContext context) {
    final List<Color> accentShades = [
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Shades'),
      backgroundColor: color,
      ),

      body: ListView.builder(
        itemCount: accentShades.length,
        itemBuilder:(BuildContext context, int number){
          return ListItem(color:accentShades[number]);
        }

      ),
    );
  }
}
