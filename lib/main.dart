import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EjemploStateful',
      home: Scaffold(
        body: Center(
          child: ExampleWidget()
        )
      )
    );
  }
}

class ExampleWidget extends StatefulWidget {
  @override
  State createState(){
    return new ExWidgetState();
  }
}

class ExWidgetState extends State {
  bool reproduciendo = false;

  void reproducir(){
    setState((){
      reproduciendo = !reproduciendo;
    });
  }

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [         
          const Image(
            image: AssetImage('img/Player_Overlay.png'),
            fit: BoxFit.fill,
            height: 500,
          ),  
          IconButton(
            icon: reproduciendo ? Icon(Icons.pause) : Icon(Icons.play_arrow),
            iconSize: 90,
            color: Colors.white,
            onPressed: () {reproducir();}
          ),
        ],
      )
    );
  }
}
