import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
//import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget{
  MyHomePage({Key key, this.title}):super(key: key);
  final String title;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: MyHomePageBody(),
    );
  }
}

class MyHomePageBody extends StatelessWidget{
  @override
  AudioCache audioCache = AudioCache();
  void play(){
    //AudioCache audioCache = AudioCache();
    //audioCache.play("audio/1.mp3");
    audioCache.play("audio/二.mp3");
  }

  Widget build(BuildContext context){
    return Center(
      child:
      RaisedButton(
        child: Text('Raised Button'),
	onPressed: (){
	  play();
	  print('Raised Pressed');
	},
      ),
    );
  }
}
