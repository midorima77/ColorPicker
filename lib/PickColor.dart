import 'package:flutter/material.dart';

class RGB extends StatefulWidget {
  const RGB({Key? key}) : super(key: key);

  @override
  State<RGB> createState() => _RGBState();
}

class _RGBState extends State<RGB> {
  double Rcolor =0;
  double Gcolor =0;
  double Bcolor=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title: Text('Pick Your Color')


      ),
       body: Column(
         children: [
           Slider(
             thumbColor: Colors.red,
               activeColor: Colors.red,
               inactiveColor: Colors.red[100],
               value:Rcolor,
             max: 255,
             divisions: 225,
             label: Rcolor.round().toString(),
             onChanged: (double value){
                 setState(() {
                  Rcolor =value;

                 });
             },
           ),
           Slider(
             thumbColor: Colors.green,
             activeColor: Colors.green,
             inactiveColor: Colors.green[100],
             value:Gcolor,
             max: 255,
             divisions: 225,
             label: Gcolor.round().toString(),
             onChanged: (double value){
               setState(() {
                 Gcolor =value;

               });
             },
           ),
           Slider(
             thumbColor: Colors.blue,
             activeColor: Colors.blue,
             inactiveColor: Colors.blue[100],
             value:Bcolor,
             max: 255,
             divisions: 225,
             label: Bcolor.round().toString(),
             onChanged: (double value){
               setState(() {
                 Bcolor =value;

               });
             },
           ),
           Text('Selected Color',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.cyan)
           ),
           // const SizedBox(
           //   height: 20,
           // ),

           Container(
             margin: EdgeInsets.all(30),
             width:200.0,
             height: 200.0,
             decoration: BoxDecoration(
               color: Color.fromRGBO(Rcolor.round().toInt(), Gcolor.round().toInt(),Bcolor.round().toInt(),1),
               shape:BoxShape.circle,
             ),
           ),
           // const SizedBox(
           //   height: 40,
           // ),
           ElevatedButton(onPressed: (){
             Navigator.pop(context);
             showDialog<String>(
               context: context,
               builder: (BuildContext context) => AlertDialog(
                 title: const Text('You have picked the Color'),
                 content: Container(
                   // margin: EdgeInsets.all(30),
                   width:50.0,
                   height: 50.0,
                   decoration: BoxDecoration(
                     color: Color.fromRGBO(Rcolor.round().toInt(), Gcolor.round().toInt(),Bcolor.round().toInt(),1),
                     shape:BoxShape.circle,
                   ),
                 ),
                 actions: <Widget>[
                   // TextButton(
                   //   onPressed: () => Navigator.pop(context, 'Cancel'),
                   //   child: const Text('Cancel'),
                   // ),
                   TextButton(
                     onPressed: () => Navigator.pop(context, 'OK'),
                     child: const Text('OKAY'),
                   ),
                 ],
               ),
             );
           },
             child: const Text('Submit Color')),



         ],
       ),
    );
  }
}


