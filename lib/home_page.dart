import 'package:flutter/material.dart';
import 'package:navigation/list_item.dart';
import 'package:navigation/shades_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
//

//
  final String title;
//
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
//
class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

    void navigateToShadePage(BuildContext context,MaterialAccentColor color){
      Navigator.push(
          context,
          MaterialPageRoute(builder:(BuildContext context)
          {
        return ShadesPage(color: color,
        );
      }),
      );}

    void NavigatetoStatic(BuildContext, MaterialAccentColor color){
      Navigator.pushNamed(context, '/shades',arguments: color);
    }

    void NavigatetoRGB(BuildContext context){
      Navigator.pushNamed(context, '/RGB');
    }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(

          title: Text('Colors')


      ),
      body:ListView.builder(
        itemCount: Colors.accents.length,
        itemBuilder: (BuildContext context,int index){

          return GestureDetector(
            onTap: (){
              NavigatetoStatic(context,Colors.accents.elementAt(index));
            },
            child: ListItem(
              color: Colors.accents.elementAt(index),
            ),
          );
          return ListItem(color: Colors.accents.elementAt(index),
          );
        },
      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.brush_sharp),
          onPressed: () => {
            NavigatetoRGB(context),
          },
        ),

      );


  }
}


