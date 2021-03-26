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
      title: 'Flutter Fluent Town',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Fluent Town"),
	actions: <Widget>[
	  RaisedButton(
            child: Text('Mock Exam'),
            onPressed: (){
              print('Mock Exam Pressed');
            },
	  ),
	],
      ),
      body: MyStatefulHomePage(),
    );
  }
}

class MyStatefulHomePage extends StatefulWidget{
  @override
  _MyStatefulHomePageState createState() => _MyStatefulHomePageState();
}

class _MyStatefulHomePageState extends State<MyStatefulHomePage>{
  @override

  AudioCache audioCache = AudioCache();
  double _currentSliderValue = 1;
  
  void play(){
    audioCache.play("audio/二.mp3");
  }

  Widget build(BuildContext context){
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
	  actions: <Widget>[
	    Text(_currentSliderValue.round().toString()),
	    RaisedButton(
              child: Icon(Icons.arrow_back),
              onPressed: (){
		if(_currentSliderValue > 2){
	          setState((){
		    _currentSliderValue--;
		  });
		}
                print('left Pressed');
              },
	    ),
	    Slider(
              value: _currentSliderValue,
	      min: 1,
	      max: 625,
	      divisions: 625,
	      label: _currentSliderValue.round().toString(),
	      onChanged: (double value){
	        setState((){
	          _currentSliderValue = value;
		});
	      },
	    ),  
	    RaisedButton(
              child: Icon(Icons.arrow_forward),
              onPressed: (){
		if(_currentSliderValue < 624){
	          setState((){
		    _currentSliderValue++;
		  });
		}
                print('Right Pressed');
              },
	    ),
	  ],
	  bottom: TabBar(
	    tabs: <Widget>[
	      Tab(
	        text: "Swedish",
	      ),
	      Tab(
	        text: "Japanese",
	      ),
	      Tab(
	        text: "Portuguese",
	      ),
	      Tab(
	        text: "Chinese",
	      ),
	    ],
	  ),
	),
	body: TabBarView(
	  children: <Widget>[
            GridView.count(
	      crossAxisCount: 3,
	      crossAxisSpacing: 4.0,
	      mainAxisSpacing: 8.0,

              children: <Widget>[
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
              ],
            ),
            GridView.count(
	      crossAxisCount: 3,
	      crossAxisSpacing: 4.0,
	      mainAxisSpacing: 8.0,

              children: <Widget>[
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
              ],
            ),
            GridView.count(
	      crossAxisCount: 3,
	      crossAxisSpacing: 4.0,
	      mainAxisSpacing: 8.0,

              children: <Widget>[
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
              ],
            ),
            GridView.count(
	      crossAxisCount: 3,
	      crossAxisSpacing: 4.0,
	      mainAxisSpacing: 8.0,

              children: <Widget>[
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
	        RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){
                    play();
                    print('Raised Pressed');
                  },
                ),
              ],
            ),
	  ],
	),
      ),
    );
  }
}
