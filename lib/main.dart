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
	      Navigator.push(
	        context,
		MaterialPageRoute(builder: (context) => MyStatelessHomePage(number: 3)),
	      );
            },
	  ),
	],
      ),
      body: MyStatefulHomePage(),
    );
  }
}

class MyStatelessHomePage extends StatelessWidget{
  var number;
  MyStatelessHomePage({Key key, @required this.number}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
	  child: Text(number.toString()),
	),
      ),
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
  
  void play(String filename){
    audioCache.play('audio/' + filename);
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
                  child: Text('adjektiv\nadjective'),
                  onPressed: (){
                    play('pronunciation_sv_adjektiv.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('advokat\nlawyer'),
                  onPressed: (){
                    play('pronunciation_sv_advokat.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ansikte\nface'),
                  onPressed: (){
                    play('pronunciation_sv_ansikte.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('armén\narmy'),
                  onPressed: (){
                    play('pronunciation_sv_armén.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('arton\neighteen'),
                  onPressed: (){
                    play('pronunciation_sv_arton.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('axel\nshoulder'),
                  onPressed: (){
                    play('pronunciation_sv_axel.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('badrum\nbathroom'),
                  onPressed: (){
                    play('pronunciation_sv_badrum.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('banan\nbanana'),
                  onPressed: (){
                    play('pronunciation_sv_banan.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('barn\nchild'),
                  onPressed: (){
                    play('pronunciation_sv_barn.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bebis\nbaby'),
                  onPressed: (){
                    play('pronunciation_sv_bebis.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ben\nbone'),
                  onPressed: (){
                    play('pronunciation_sv_ben.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bensin\ngasoline'),
                  onPressed: (){
                    play('pronunciation_sv_bensin.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bibliotek\nlibrary'),
                  onPressed: (){
                    play('pronunciation_sv_bibliotek.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bil\ncar'),
                  onPressed: (){
                    play('pronunciation_sv_bil.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bild\nimage'),
                  onPressed: (){
                    play('pronunciation_sv_bild.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('billig\ncheap'),
                  onPressed: (){
                    play('pronunciation_sv_billig.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bit\npiece'),
                  onPressed: (){
                    play('pronunciation_sv_bit.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('blad\nleaf'),
                  onPressed: (){
                    play('pronunciation_sv_blad.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('blod\nblood'),
                  onPressed: (){
                    play('pronunciation_sv_blod.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('blomma\nflower'),
                  onPressed: (){
                    play('pronunciation_sv_blomma.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('blå\nblue'),
                  onPressed: (){
                    play('pronunciation_sv_blå.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bok\nbook'),
                  onPressed: (){
                    play('pronunciation_sv_bok.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('boll\nball'),
                  onPressed: (){
                    play('pronunciation_sv_boll.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('botten\nbottom'),
                  onPressed: (){
                    play('pronunciation_sv_botten.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bred\nwide'),
                  onPressed: (){
                    play('pronunciation_sv_bred.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('brev\nletter'),
                  onPressed: (){
                    play('pronunciation_sv_brev.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bror\nbrother'),
                  onPressed: (){
                    play('pronunciation_sv_bror.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('brun\nbrown'),
                  onPressed: (){
                    play('pronunciation_sv_brun.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bränn\nburn'),
                  onPressed: (){
                    play('pronunciation_sv_bränn.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bröd\nbread'),
                  onPressed: (){
                    play('pronunciation_sv_bröd.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bröllop\nwedding'),
                  onPressed: (){
                    play('pronunciation_sv_bröllop.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('buss\nbus'),
                  onPressed: (){
                    play('pronunciation_sv_buss.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('byggnad\nbuilding'),
                  onPressed: (){
                    play('pronunciation_sv_byggnad.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('byxor\npants'),
                  onPressed: (){
                    play('pronunciation_sv_byxor.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('båt\nboat'),
                  onPressed: (){
                    play('pronunciation_sv_båt.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('böj\nbend'),
                  onPressed: (){
                    play('pronunciation_sv_böj.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('böjd\ncurved'),
                  onPressed: (){
                    play('pronunciation_sv_böjd.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('centimeter\ncentimeter'),
                  onPressed: (){
                    play('pronunciation_sv_centimeter.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('chef\nmanager'),
                  onPressed: (){
                    play('pronunciation_sv_chef.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cykel\nbicycle'),
                  onPressed: (){
                    play('pronunciation_sv_cykel.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dag\nday'),
                  onPressed: (){
                    play('pronunciation_sv_dag.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dal\nvalley'),
                  onPressed: (){
                    play('pronunciation_sv_dal.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dans\ndance'),
                  onPressed: (){
                    play('pronunciation_sv_dans.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dator\ncomputer'),
                  onPressed: (){
                    play('pronunciation_sv_dator.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('djup\ndeep'),
                  onPressed: (){
                    play('pronunciation_sv_djup.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dollar\ndollar'),
                  onPressed: (){
                    play('pronunciation_sv_dollar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('domstol\ncourt'),
                  onPressed: (){
                    play('pronunciation_sv_domstol.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dotter\ndaughter'),
                  onPressed: (){
                    play('pronunciation_sv_dotter.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('drottning\nqueen'),
                  onPressed: (){
                    play('pronunciation_sv_drottning.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dryck\nbeverage'),
                  onPressed: (){
                    play('pronunciation_sv_dryck.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dyr\nexpensive'),
                  onPressed: (){
                    play('pronunciation_sv_dyr.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dålig\nbad'),
                  onPressed: (){
                    play('pronunciation_sv_dålig.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('död\ndead'),
                  onPressed: (){
                    play('pronunciation_sv_död.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dörr\ndoor'),
                  onPressed: (){
                    play('pronunciation_sv_dörr.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('döv\ndeaf'),
                  onPressed: (){
                    play('pronunciation_sv_döv.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('eftermiddag\nafternoon'),
                  onPressed: (){
                    play('pronunciation_sv_eftermiddag.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('elektronik\nelectronics'),
                  onPressed: (){
                    play('pronunciation_sv_elektronik.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('elva\neleven'),
                  onPressed: (){
                    play('pronunciation_sv_elva.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('energi\nenergy'),
                  onPressed: (){
                    play('pronunciation_sv_energi.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ett\none'),
                  onPressed: (){
                    play('pronunciation_sv_ett.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('familj\nfamily'),
                  onPressed: (){
                    play('pronunciation_sv_familj.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('far\nfather'),
                  onPressed: (){
                    play('pronunciation_sv_far.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('farfar\ngrandfather'),
                  onPressed: (){
                    play('pronunciation_sv_farfar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fartyg\nship'),
                  onPressed: (){
                    play('pronunciation_sv_fartyg.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fattig\npoor'),
                  onPressed: (){
                    play('pronunciation_sv_fattig.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fem\nfive'),
                  onPressed: (){
                    play('pronunciation_sv_fem.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('femtio\nfifty'),
                  onPressed: (){
                    play('pronunciation_sv_femtio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('femton\nfifteen'),
                  onPressed: (){
                    play('pronunciation_sv_femton.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ficka\npocket'),
                  onPressed: (){
                    play('pronunciation_sv_ficka.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('film\nmovie'),
                  onPressed: (){
                    play('pronunciation_sv_film.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('finger\nfinger'),
                  onPressed: (){
                    play('pronunciation_sv_finger.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fjorton\nfourteen'),
                  onPressed: (){
                    play('pronunciation_sv_fjorton.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('flaska\nbottle'),
                  onPressed: (){
                    play('pronunciation_sv_flaska.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('flicka\ngirl'),
                  onPressed: (){
                    play('pronunciation_sv_flicka.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('flod\nriver'),
                  onPressed: (){
                    play('pronunciation_sv_flod.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('flygplats\nairport'),
                  onPressed: (){
                    play('pronunciation_sv_flygplats.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fläsk\npork'),
                  onPressed: (){
                    play('pronunciation_sv_fläsk.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fotografera\nphotograph'),
                  onPressed: (){
                    play('pronunciation_sv_fotografera.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fred\npeace'),
                  onPressed: (){
                    play('pronunciation_sv_fred.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fredag\nFriday'),
                  onPressed: (){
                    play('pronunciation_sv_fredag.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fru\nwife'),
                  onPressed: (){
                    play('pronunciation_sv_fru.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('frukost\nbreakfast'),
                  onPressed: (){
                    play('pronunciation_sv_frukost.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('främre\nfront'),
                  onPressed: (){
                    play('pronunciation_sv_främre.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ful\nugly'),
                  onPressed: (){
                    play('pronunciation_sv_ful.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fyra\nfour'),
                  onPressed: (){
                    play('pronunciation_sv_fyra.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fyrkant\nsquare'),
                  onPressed: (){
                    play('pronunciation_sv_fyrkant.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fyrtio\nforty'),
                  onPressed: (){
                    play('pronunciation_sv_fyrtio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fängelse\nprison'),
                  onPressed: (){
                    play('pronunciation_sv_fängelse.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fågel\nbird'),
                  onPressed: (){
                    play('pronunciation_sv_fågel.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fönster\nwindow'),
                  onPressed: (){
                    play('pronunciation_sv_fönster.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('förälder\nparent'),
                  onPressed: (){
                    play('pronunciation_sv_förälder.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('gaffel\nfork'),
                  onPressed: (){
                    play('pronunciation_sv_gaffel.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('gift\nmarry'),
                  onPressed: (){
                    play('pronunciation_sv_gift.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('glas\nglass'),
                  onPressed: (){
                    play('pronunciation_sv_glas.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('golv\nfloor'),
                  onPressed: (){
                    play('pronunciation_sv_golv.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('granne\nneighbor'),
                  onPressed: (){
                    play('pronunciation_sv_granne.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('gris\npig'),
                  onPressed: (){
                    play('pronunciation_sv_gris.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('grund\nshallow'),
                  onPressed: (){
                    play('pronunciation_sv_grund.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('gräs\ngrass'),
                  onPressed: (){
                    play('pronunciation_sv_gräs.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('grå\ngray'),
                  onPressed: (){
                    play('pronunciation_sv_grå.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('grön\ngreen'),
                  onPressed: (){
                    play('pronunciation_sv_grön.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('gul\ngold'),
                  onPressed: (){
                    play('pronunciation_sv_gul.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('gård\nfarm'),
                  onPressed: (){
                    play('pronunciation_sv_gård.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('gåva\ngift'),
                  onPressed: (){
                    play('pronunciation_sv_gåva.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('halv\nhalf'),
                  onPressed: (){
                    play('pronunciation_sv_halv.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('han\nhe'),
                  onPressed: (){
                    play('pronunciation_sv_han.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hand\nhand'),
                  onPressed: (){
                    play('pronunciation_sv_hand.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hatt\nhat'),
                  onPressed: (){
                    play('pronunciation_sv_hatt.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hav\nocean'),
                  onPressed: (){
                    play('pronunciation_sv_hav.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('himmel\nheaven'),
                  onPressed: (){
                    play('pronunciation_sv_himmel.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hjärna\nbrain'),
                  onPressed: (){
                    play('pronunciation_sv_hjärna.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hjärta\nheart'),
                  onPressed: (){
                    play('pronunciation_sv_hjärta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hon\nshe'),
                  onPressed: (){
                    play('pronunciation_sv_hon.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hotell\nhotel'),
                  onPressed: (){
                    play('pronunciation_sv_hotell.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hud\nskin'),
                  onPressed: (){
                    play('pronunciation_sv_hud.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hund\ndog'),
                  onPressed: (){
                    play('pronunciation_sv_hund.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hundra\nhundred'),
                  onPressed: (){
                    play('pronunciation_sv_hundra.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hus\nhouse'),
                  onPressed: (){
                    play('pronunciation_sv_hus.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('huvud\nhead'),
                  onPressed: (){
                    play('pronunciation_sv_huvud.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hälsosam\nhealthy'),
                  onPressed: (){
                    play('pronunciation_sv_hälsosam.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('häst\nhorse'),
                  onPressed: (){
                    play('pronunciation_sv_häst.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hål\nhole'),
                  onPressed: (){
                    play('pronunciation_sv_hål.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hår\nhair'),
                  onPressed: (){
                    play('pronunciation_sv_hår.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hård\nhard'),
                  onPressed: (){
                    play('pronunciation_sv_hård.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hög\nhigh'),
                  onPressed: (){
                    play('pronunciation_sv_hög.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('högt\nloud'),
                  onPressed: (){
                    play('pronunciation_sv_högt.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hör\ncorner'),
                  onPressed: (){
                    play('pronunciation_sv_hör.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('inuti\ninside'),
                  onPressed: (){
                    play('pronunciation_sv_inuti.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ja\nyes'),
                  onPressed: (){
                    play('pronunciation_sv_ja.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('jobb\njob'),
                  onPressed: (){
                    play('pronunciation_sv_jobb.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('jord\nground'),
                  onPressed: (){
                    play('pronunciation_sv_jord.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('juice\njuice'),
                  onPressed: (){
                    play('pronunciation_sv_juice.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kaffe\ncoffee'),
                  onPressed: (){
                    play('pronunciation_sv_kaffe.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kaka\ncake'),
                  onPressed: (){
                    play('pronunciation_sv_kaka.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kall\ncold'),
                  onPressed: (){
                    play('pronunciation_sv_kall.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kamera\ncamera'),
                  onPressed: (){
                    play('pronunciation_sv_kamera.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kant\nedge'),
                  onPressed: (){
                    play('pronunciation_sv_kant.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('katt\ncat'),
                  onPressed: (){
                    play('pronunciation_sv_katt.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kilogram\nkilogram'),
                  onPressed: (){
                    play('pronunciation_sv_kilogram.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kjol\nskirt'),
                  onPressed: (){
                    play('pronunciation_sv_kjol.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('klocka\nclock'),
                  onPressed: (){
                    play('pronunciation_sv_klocka.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kniv\nknife'),
                  onPressed: (){
                    play('pronunciation_sv_kniv.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('knä\nknee'),
                  onPressed: (){
                    play('pronunciation_sv_knä.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ko\ncow'),
                  onPressed: (){
                    play('pronunciation_sv_ko.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('konsonant\nconsonant'),
                  onPressed: (){
                    play('pronunciation_sv_konsonant.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('konst\nart'),
                  onPressed: (){
                    play('pronunciation_sv_konst.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('konstnär\nartist'),
                  onPressed: (){
                    play('pronunciation_sv_konstnär.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kontor\noffice'),
                  onPressed: (){
                    play('pronunciation_sv_kontor.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kopp\ncup'),
                  onPressed: (){
                    play('pronunciation_sv_kopp.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('koppar\ncopper'),
                  onPressed: (){
                    play('pronunciation_sv_koppar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kort\ncard'),
                  onPressed: (){
                    play('pronunciation_sv_kort.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('krig\nwar'),
                  onPressed: (){
                    play('pronunciation_sv_krig.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kropp\nbody'),
                  onPressed: (){
                    play('pronunciation_sv_kropp.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kulle\nhill'),
                  onPressed: (){
                    play('pronunciation_sv_kulle.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kung\nking'),
                  onPressed: (){
                    play('pronunciation_sv_kung.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kvinna\nfemale'),
                  onPressed: (){
                    play('pronunciation_sv_kvinna.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kväll\nevening'),
                  onPressed: (){
                    play('pronunciation_sv_kväll.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kyckling\nchicken'),
                  onPressed: (){
                    play('pronunciation_sv_kyckling.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kyrka\nchurch'),
                  onPressed: (){
                    play('pronunciation_sv_kyrka.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kyss\nkiss'),
                  onPressed: (){
                    play('pronunciation_sv_kyss.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('känd\nfamous'),
                  onPressed: (){
                    play('pronunciation_sv_känd.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kärn\nnuclear'),
                  onPressed: (){
                    play('pronunciation_sv_kärn.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('kök\nkitchen'),
                  onPressed: (){
                    play('pronunciation_sv_kök.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lampa\nlamp'),
                  onPressed: (){
                    play('pronunciation_sv_lampa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lastbil\ntruck'),
                  onPressed: (){
                    play('pronunciation_sv_lastbil.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ledsen\nsad'),
                  onPressed: (){
                    play('pronunciation_sv_ledsen.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lera\nclay'),
                  onPressed: (){
                    play('pronunciation_sv_lera.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ljud\nsound'),
                  onPressed: (){
                    play('pronunciation_sv_ljud.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('luft\nair'),
                  onPressed: (){
                    play('pronunciation_sv_luft.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lukt\nsmell'),
                  onPressed: (){
                    play('pronunciation_sv_lukt.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lunch\nlunch'),
                  onPressed: (){
                    play('pronunciation_sv_lunch.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lägenhet\napartment'),
                  onPressed: (){
                    play('pronunciation_sv_lägenhet.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('läkare\ndoctor'),
                  onPressed: (){
                    play('pronunciation_sv_läkare.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('läpp\nlip'),
                  onPressed: (){
                    play('pronunciation_sv_läpp.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lärare\nteacher'),
                  onPressed: (){
                    play('pronunciation_sv_lärare.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('låg\nlow'),
                  onPressed: (){
                    play('pronunciation_sv_låg.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lång\nlong'),
                  onPressed: (){
                    play('pronunciation_sv_lång.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('långsam\nslow'),
                  onPressed: (){
                    play('pronunciation_sv_långsam.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('låt\nsong'),
                  onPressed: (){
                    play('pronunciation_sv_låt.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lösa\nloose'),
                  onPressed: (){
                    play('pronunciation_sv_lösa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('majs\ncorn'),
                  onPressed: (){
                    play('pronunciation_sv_majs.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('man\nman'),
                  onPressed: (){
                    play('pronunciation_sv_man.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('manlig\nmale'),
                  onPressed: (){
                    play('pronunciation_sv_manlig.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('marknadsföra\nmarket'),
                  onPressed: (){
                    play('pronunciation_sv_marknadsföra.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mat\nfeed'),
                  onPressed: (){
                    play('pronunciation_sv_mat.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('material\nmaterial'),
                  onPressed: (){
                    play('pronunciation_sv_material.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('medicin\nmedicine'),
                  onPressed: (){
                    play('pronunciation_sv_medicin.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('metall\nmetal'),
                  onPressed: (){
                    play('pronunciation_sv_metall.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('meter\nmeter'),
                  onPressed: (){
                    play('pronunciation_sv_meter.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('middag\ndinner'),
                  onPressed: (){
                    play('pronunciation_sv_middag.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('miljard\nbillion'),
                  onPressed: (){
                    play('pronunciation_sv_miljard.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('miljon\nmillion'),
                  onPressed: (){
                    play('pronunciation_sv_miljon.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('minut\nminute'),
                  onPressed: (){
                    play('pronunciation_sv_minut.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mjuk\nsoft'),
                  onPressed: (){
                    play('pronunciation_sv_mjuk.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mjölk\nmilk'),
                  onPressed: (){
                    play('pronunciation_sv_mjölk.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mor\nmother'),
                  onPressed: (){
                    play('pronunciation_sv_mor.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mormor\ngrandmother'),
                  onPressed: (){
                    play('pronunciation_sv_mormor.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('motor\nengine'),
                  onPressed: (){
                    play('pronunciation_sv_motor.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mun\nmouth'),
                  onPressed: (){
                    play('pronunciation_sv_mun.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mus\nmouse'),
                  onPressed: (){
                    play('pronunciation_sv_mus.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('musik\nmusic'),
                  onPressed: (){
                    play('pronunciation_sv_musik.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mänsklig\nhuman'),
                  onPressed: (){
                    play('pronunciation_sv_mänsklig.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('måla\npaint'),
                  onPressed: (){
                    play('pronunciation_sv_måla.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('månad\nmonth'),
                  onPressed: (){
                    play('pronunciation_sv_månad.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('måne\nmoon'),
                  onPressed: (){
                    play('pronunciation_sv_måne.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mönster\npattern'),
                  onPressed: (){
                    play('pronunciation_sv_mönster.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mörk\ndark'),
                  onPressed: (){
                    play('pronunciation_sv_mörk.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('nacke\nneck'),
                  onPressed: (){
                    play('pronunciation_sv_nacke.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('natt\nnight'),
                  onPressed: (){
                    play('pronunciation_sv_natt.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('natur\nnature'),
                  onPressed: (){
                    play('pronunciation_sv_natur.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ner\ndown'),
                  onPressed: (){
                    play('pronunciation_sv_ner.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('nio\nnine'),
                  onPressed: (){
                    play('pronunciation_sv_nio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('nittio\nninety'),
                  onPressed: (){
                    play('pronunciation_sv_nittio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('nitton\nnineteen'),
                  onPressed: (){
                    play('pronunciation_sv_nitton.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('norr\nnorth'),
                  onPressed: (){
                    play('pronunciation_sv_norr.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('näsa\nnose'),
                  onPressed: (){
                    play('pronunciation_sv_näsa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('nätverk\nnetwork'),
                  onPressed: (){
                    play('pronunciation_sv_nätverk.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('nål\nneedle'),
                  onPressed: (){
                    play('pronunciation_sv_nål.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('nötkött\nbeef'),
                  onPressed: (){
                    play('pronunciation_sv_nötkött.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('offer\nvictim'),
                  onPressed: (){
                    play('pronunciation_sv_offer.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('olja\noil'),
                  onPressed: (){
                    play('pronunciation_sv_olja.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ost\ncheese'),
                  onPressed: (){
                    play('pronunciation_sv_ost.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('papper\npaper'),
                  onPressed: (){
                    play('pronunciation_sv_papper.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pengar\nmoney'),
                  onPressed: (){
                    play('pronunciation_sv_pengar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('penna\npen'),
                  onPressed: (){
                    play('pronunciation_sv_penna.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('person\nperson'),
                  onPressed: (){
                    play('pronunciation_sv_person.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pistol\ngun'),
                  onPressed: (){
                    play('pronunciation_sv_pistol.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('plan\nplane'),
                  onPressed: (){
                    play('pronunciation_sv_plan.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('plast\nplastic'),
                  onPressed: (){
                    play('pronunciation_sv_plast.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('plats\nlocation'),
                  onPressed: (){
                    play('pronunciation_sv_plats.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pojke\nboy'),
                  onPressed: (){
                    play('pronunciation_sv_pojke.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('polis\npolice'),
                  onPressed: (){
                    play('pronunciation_sv_polis.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('president\npresident'),
                  onPressed: (){
                    play('pronunciation_sv_president.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pris\nprice'),
                  onPressed: (){
                    play('pronunciation_sv_pris.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('präst\npriest'),
                  onPressed: (){
                    play('pronunciation_sv_präst.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('punkt\ndot'),
                  onPressed: (){
                    play('pronunciation_sv_punkt.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('radio\nradio'),
                  onPressed: (){
                    play('pronunciation_sv_radio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('religion\nreligion'),
                  onPressed: (){
                    play('pronunciation_sv_religion.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ren\nclean'),
                  onPressed: (){
                    play('pronunciation_sv_ren.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('reporter\nreporter'),
                  onPressed: (){
                    play('pronunciation_sv_reporter.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('restaurang\nrestaurant'),
                  onPressed: (){
                    play('pronunciation_sv_restaurang.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('rik\nrich'),
                  onPressed: (){
                    play('pronunciation_sv_rik.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('riktning\ndirection'),
                  onPressed: (){
                    play('pronunciation_sv_riktning.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ringa\nring'),
                  onPressed: (){
                    play('pronunciation_sv_ringa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ris\nrice'),
                  onPressed: (){
                    play('pronunciation_sv_ris.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('rosa\npink'),
                  onPressed: (){
                    play('pronunciation_sv_rosa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('rot\nroot'),
                  onPressed: (){
                    play('pronunciation_sv_rot.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('röd\nred'),
                  onPressed: (){
                    play('pronunciation_sv_röd.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sand\nsand'),
                  onPressed: (){
                    play('pronunciation_sv_sand.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('se\nsex'),
                  onPressed: (){
                    play('pronunciation_sv_se.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sekreterare\nsecretary'),
                  onPressed: (){
                    play('pronunciation_sv_sekreterare.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('servitör\nwaiter'),
                  onPressed: (){
                    play('pronunciation_sv_servitör.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sex\nsix'),
                  onPressed: (){
                    play('pronunciation_sv_sex.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sextio\nsixty'),
                  onPressed: (){
                    play('pronunciation_sv_sextio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sexton\nsixteen'),
                  onPressed: (){
                    play('pronunciation_sv_sexton.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sida\npage'),
                  onPressed: (){
                    play('pronunciation_sv_sida.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('siffra\nnumber'),
                  onPressed: (){
                    play('pronunciation_sv_siffra.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sju\nseven'),
                  onPressed: (){
                    play('pronunciation_sv_sju.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sjuk\nsick'),
                  onPressed: (){
                    play('pronunciation_sv_sjuk.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sjukdom\ndisease'),
                  onPressed: (){
                    play('pronunciation_sv_sjukdom.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sjuttio\nseventy'),
                  onPressed: (){
                    play('pronunciation_sv_sjuttio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sjutton\nseventeen'),
                  onPressed: (){
                    play('pronunciation_sv_sjutton.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sjö\nlake'),
                  onPressed: (){
                    play('pronunciation_sv_sjö.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('skada\ninjury'),
                  onPressed: (){
                    play('pronunciation_sv_skada.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sked\nspoon'),
                  onPressed: (){
                    play('pronunciation_sv_sked.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('skjorta\nshirt'),
                  onPressed: (){
                    play('pronunciation_sv_skjorta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('skog\nforest'),
                  onPressed: (){
                    play('pronunciation_sv_skog.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('skola\nschool'),
                  onPressed: (){
                    play('pronunciation_sv_skola.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('skor\nshoes'),
                  onPressed: (){
                    play('pronunciation_sv_skor.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('skägg\nbeard'),
                  onPressed: (){
                    play('pronunciation_sv_skägg.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('skärm\nscreen'),
                  onPressed: (){
                    play('pronunciation_sv_skärm.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('skådespelare\nactor'),
                  onPressed: (){
                    play('pronunciation_sv_skådespelare.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('skön\nbeautiful'),
                  onPressed: (){
                    play('pronunciation_sv_skön.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('smal\nnarrow'),
                  onPressed: (){
                    play('pronunciation_sv_smal.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('smutsig\ndirty'),
                  onPressed: (){
                    play('pronunciation_sv_smutsig.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('smärta\npain'),
                  onPressed: (){
                    play('pronunciation_sv_smärta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('snabb\nfast'),
                  onPressed: (){
                    play('pronunciation_sv_snabb.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('socker\nsugar'),
                  onPressed: (){
                    play('pronunciation_sv_socker.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('soldat\nsoldier'),
                  onPressed: (){
                    play('pronunciation_sv_soldat.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sommar\nsummer'),
                  onPressed: (){
                    play('pronunciation_sv_sommar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('son\nson'),
                  onPressed: (){
                    play('pronunciation_sv_son.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('soppa\nsoup'),
                  onPressed: (){
                    play('pronunciation_sv_soppa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sovrum\nbedroom'),
                  onPressed: (){
                    play('pronunciation_sv_sovrum.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('spel\ngame'),
                  onPressed: (){
                    play('pronunciation_sv_spel.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('spelare\nplayer'),
                  onPressed: (){
                    play('pronunciation_sv_spelare.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sport\nsport'),
                  onPressed: (){
                    play('pronunciation_sv_sport.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('stad\ncity'),
                  onPressed: (){
                    play('pronunciation_sv_stad.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('stark\nstrong'),
                  onPressed: (){
                    play('pronunciation_sv_stark.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sten\nstone'),
                  onPressed: (){
                    play('pronunciation_sv_sten.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('stjärna\nstar'),
                  onPressed: (){
                    play('pronunciation_sv_stjärna.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('strand\nbeach'),
                  onPressed: (){
                    play('pronunciation_sv_strand.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('studerande\nstudent'),
                  onPressed: (){
                    play('pronunciation_sv_studerande.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('svag\nweak'),
                  onPressed: (){
                    play('pronunciation_sv_svag.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('svart\nblack'),
                  onPressed: (){
                    play('pronunciation_sv_svart.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('syster\nsister'),
                  onPressed: (){
                    play('pronunciation_sv_syster.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('säng\nbed'),
                  onPressed: (){
                    play('pronunciation_sv_säng.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('säsong\nseason'),
                  onPressed: (){
                    play('pronunciation_sv_säsong.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('söder\nsouth'),
                  onPressed: (){
                    play('pronunciation_sv_söder.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tabell\ntable'),
                  onPressed: (){
                    play('pronunciation_sv_tabell.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tak\nceiling'),
                  onPressed: (){
                    play('pronunciation_sv_tak.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tallrik\nplate'),
                  onPressed: (){
                    play('pronunciation_sv_tallrik.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tand\ntooth'),
                  onPressed: (){
                    play('pronunciation_sv_tand.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('te\ntea'),
                  onPressed: (){
                    play('pronunciation_sv_te.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('team\nteam'),
                  onPressed: (){
                    play('pronunciation_sv_team.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('teater\ntheater'),
                  onPressed: (){
                    play('pronunciation_sv_teater.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('teknologi\ntechnology'),
                  onPressed: (){
                    play('pronunciation_sv_teknologi.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('telefon\nphone'),
                  onPressed: (){
                    play('pronunciation_sv_telefon.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('temperatur\ntemperature'),
                  onPressed: (){
                    play('pronunciation_sv_temperatur.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tidning\nnewspaper'),
                  onPressed: (){
                    play('pronunciation_sv_tidning.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tidskrift\nmagazine'),
                  onPressed: (){
                    play('pronunciation_sv_tidskrift.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('timme\nhour'),
                  onPressed: (){
                    play('pronunciation_sv_timme.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tio\nten'),
                  onPressed: (){
                    play('pronunciation_sv_tio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tjock\nthick'),
                  onPressed: (){
                    play('pronunciation_sv_tjock.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tjugo\ntwenty'),
                  onPressed: (){
                    play('pronunciation_sv_tjugo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tolv\ntwelve'),
                  onPressed: (){
                    play('pronunciation_sv_tolv.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('topp\ntop'),
                  onPressed: (){
                    play('pronunciation_sv_topp.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('torr\ndry'),
                  onPressed: (){
                    play('pronunciation_sv_torr.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('transport\ntransportation'),
                  onPressed: (){
                    play('pronunciation_sv_transport.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tre\nthree'),
                  onPressed: (){
                    play('pronunciation_sv_tre.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('trettio\nthirty'),
                  onPressed: (){
                    play('pronunciation_sv_trettio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tretton\nthirteen'),
                  onPressed: (){
                    play('pronunciation_sv_tretton.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('trevlig\nnice'),
                  onPressed: (){
                    play('pronunciation_sv_trevlig.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('trä\nwood'),
                  onPressed: (){
                    play('pronunciation_sv_trä.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('träd\ntree'),
                  onPressed: (){
                    play('pronunciation_sv_träd.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('trädgård\ngarden'),
                  onPressed: (){
                    play('pronunciation_sv_trädgård.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tum\ninch'),
                  onPressed: (){
                    play('pronunciation_sv_tum.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tung\nheavy'),
                  onPressed: (){
                    play('pronunciation_sv_tung.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tunga\ntongue'),
                  onPressed: (){
                    play('pronunciation_sv_tunga.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tunn\nthin'),
                  onPressed: (){
                    play('pronunciation_sv_tunn.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tusen\nthousand'),
                  onPressed: (){
                    play('pronunciation_sv_tusen.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tv\ntelevision'),
                  onPressed: (){
                    play('pronunciation_sv_tv.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('två\ntwo'),
                  onPressed: (){
                    play('pronunciation_sv_två.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tvål\nsoap'),
                  onPressed: (){
                    play('pronunciation_sv_tvål.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tyst\nquiet'),
                  onPressed: (){
                    play('pronunciation_sv_tyst.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tå\ntoe'),
                  onPressed: (){
                    play('pronunciation_sv_tå.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tåg\ntrain'),
                  onPressed: (){
                    play('pronunciation_sv_tåg.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ung\nyoung'),
                  onPressed: (){
                    play('pronunciation_sv_ung.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('universitet\nuniversity'),
                  onPressed: (){
                    play('pronunciation_sv_universitet.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('upp\nup'),
                  onPressed: (){
                    play('pronunciation_sv_upp.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('utanför\noutside'),
                  onPressed: (){
                    play('pronunciation_sv_utanför.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('utsäde\nseed'),
                  onPressed: (){
                    play('pronunciation_sv_utsäde.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vakna\nwake'),
                  onPressed: (){
                    play('pronunciation_sv_vakna.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('val\nelection'),
                  onPressed: (){
                    play('pronunciation_sv_val.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('varm\nhot'),
                  onPressed: (){
                    play('pronunciation_sv_varm.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('varuhus\nstore/shop'),
                  onPressed: (){
                    play('pronunciation_sv_varuhus.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vecka\nweek'),
                  onPressed: (){
                    play('pronunciation_sv_vecka.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('verb\nverb'),
                  onPressed: (){
                    play('pronunciation_sv_verb.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('verktyg\ntool'),
                  onPressed: (){
                    play('pronunciation_sv_verktyg.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vetenskap\nscience'),
                  onPressed: (){
                    play('pronunciation_sv_vetenskap.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vi\nalive'),
                  onPressed: (){
                    play('pronunciation_sv_vi.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vikt\nweight'),
                  onPressed: (){
                    play('pronunciation_sv_vikt.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vin\nwind'),
                  onPressed: (){
                    play('pronunciation_sv_vin.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vinge\nwing'),
                  onPressed: (){
                    play('pronunciation_sv_vinge.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vit\nwhite'),
                  onPressed: (){
                    play('pronunciation_sv_vit.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vokal\nvowel'),
                  onPressed: (){
                    play('pronunciation_sv_vokal.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vuxen\nadult'),
                  onPressed: (){
                    play('pronunciation_sv_vuxen.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vägg\nwall'),
                  onPressed: (){
                    play('pronunciation_sv_vägg.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vän\nfriend'),
                  onPressed: (){
                    play('pronunciation_sv_vän.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('värld\nworld'),
                  onPressed: (){
                    play('pronunciation_sv_värld.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ägg\negg'),
                  onPressed: (){
                    play('pronunciation_sv_ägg.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('äktenskap\nmarriage'),
                  onPressed: (){
                    play('pronunciation_sv_äktenskap.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('äpple\napple'),
                  onPressed: (){
                    play('pronunciation_sv_äpple.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ärm\narm'),
                  onPressed: (){
                    play('pronunciation_sv_ärm.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('år\nyear'),
                  onPressed: (){
                    play('pronunciation_sv_år.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('åtta\neight'),
                  onPressed: (){
                    play('pronunciation_sv_åtta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('åttio\neighty'),
                  onPressed: (){
                    play('pronunciation_sv_åttio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ö\nisland'),
                  onPressed: (){
                    play('pronunciation_sv_ö.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('öl\nbeer'),
                  onPressed: (){
                    play('pronunciation_sv_öl.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('öra\near'),
                  onPressed: (){
                    play('pronunciation_sv_öra.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('öster\neast'),
                  onPressed: (){
                    play('pronunciation_sv_öster.mp3');
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
                  child: Text('1\none'),
                  onPressed: (){
                    play('pronunciation_ja_1.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('10月\nOctober'),
                  onPressed: (){
                    play('pronunciation_ja_10月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('11月\nNovember'),
                  onPressed: (){
                    play('pronunciation_ja_11月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('12\ntwelve'),
                  onPressed: (){
                    play('pronunciation_ja_12.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('12月\nDecember'),
                  onPressed: (){
                    play('pronunciation_ja_12月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('13\nthirteen'),
                  onPressed: (){
                    play('pronunciation_ja_13.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('15\nfifteen'),
                  onPressed: (){
                    play('pronunciation_ja_15.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('16\nsixteen'),
                  onPressed: (){
                    play('pronunciation_ja_16.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('18\neighteen'),
                  onPressed: (){
                    play('pronunciation_ja_18.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('1月\nJanuary'),
                  onPressed: (){
                    play('pronunciation_ja_1月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('2月\nFebruary'),
                  onPressed: (){
                    play('pronunciation_ja_2月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('40\nforty'),
                  onPressed: (){
                    play('pronunciation_ja_40.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('4月\nApril'),
                  onPressed: (){
                    play('pronunciation_ja_4月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('50\nfifty'),
                  onPressed: (){
                    play('pronunciation_ja_50.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('60\nsixty'),
                  onPressed: (){
                    play('pronunciation_ja_60.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('70\nseventy'),
                  onPressed: (){
                    play('pronunciation_ja_70.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('7月\nJuly'),
                  onPressed: (){
                    play('pronunciation_ja_7月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('8\neight'),
                  onPressed: (){
                    play('pronunciation_ja_8.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('8月\nAugust'),
                  onPressed: (){
                    play('pronunciation_ja_8月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('90\nninety'),
                  onPressed: (){
                    play('pronunciation_ja_90.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('9月\nSeptember'),
                  onPressed: (){
                    play('pronunciation_ja_9月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('あごひげ\nbeard'),
                  onPressed: (){
                    play('pronunciation_ja_あごひげ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('うま\nhorse'),
                  onPressed: (){
                    play('pronunciation_ja_うま.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('おとこ\nman'),
                  onPressed: (){
                    play('pronunciation_ja_おとこ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('お父さん\nfather'),
                  onPressed: (){
                    play('pronunciation_ja_お父さん.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('お茶\ntea'),
                  onPressed: (){
                    play('pronunciation_ja_お茶.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('お金\nmoney'),
                  onPressed: (){
                    play('pronunciation_ja_お金.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ご飯\nrice'),
                  onPressed: (){
                    play('pronunciation_ja_ご飯.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('それ\nit'),
                  onPressed: (){
                    play('pronunciation_ja_それ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('つま先\ntoe'),
                  onPressed: (){
                    play('pronunciation_ja_つま先.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('はい\nyes'),
                  onPressed: (){
                    play('pronunciation_ja_はい.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('まっすぐ\nstraight'),
                  onPressed: (){
                    play('pronunciation_ja_まっすぐ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('アップ\nup'),
                  onPressed: (){
                    play('pronunciation_ja_アップ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('アパート\napartment'),
                  onPressed: (){
                    play('pronunciation_ja_アパート.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('アーティスト\nartist'),
                  onPressed: (){
                    play('pronunciation_ja_アーティスト.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('アート\nart'),
                  onPressed: (){
                    play('pronunciation_ja_アート.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('イブニング\nevening'),
                  onPressed: (){
                    play('pronunciation_ja_イブニング.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('インチ\ninch'),
                  onPressed: (){
                    play('pronunciation_ja_インチ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ウェイター\nwaiter'),
                  onPressed: (){
                    play('pronunciation_ja_ウェイター.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('エネルギー\nenergy'),
                  onPressed: (){
                    play('pronunciation_ja_エネルギー.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('エレクトロニクス\nelectronics'),
                  onPressed: (){
                    play('pronunciation_ja_エレクトロニクス.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('エンジン\nengine'),
                  onPressed: (){
                    play('pronunciation_ja_エンジン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('カップ\ncup'),
                  onPressed: (){
                    play('pronunciation_ja_カップ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('カメラ\ncamera'),
                  onPressed: (){
                    play('pronunciation_ja_カメラ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('カード\ncard'),
                  onPressed: (){
                    play('pronunciation_ja_カード.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ガソリン\ngasoline'),
                  onPressed: (){
                    play('pronunciation_ja_ガソリン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ガラス\nglass'),
                  onPressed: (){
                    play('pronunciation_ja_ガラス.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('キッチン\nkitchen'),
                  onPressed: (){
                    play('pronunciation_ja_キッチン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('キログラム\nkilogram'),
                  onPressed: (){
                    play('pronunciation_ja_キログラム.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('キー\nkey'),
                  onPressed: (){
                    play('pronunciation_ja_キー.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('グレー\ngray'),
                  onPressed: (){
                    play('pronunciation_ja_グレー.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ケーキ\ncake'),
                  onPressed: (){
                    play('pronunciation_ja_ケーキ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ゲーム\ngame'),
                  onPressed: (){
                    play('pronunciation_ja_ゲーム.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('コンピューター\ncomputer'),
                  onPressed: (){
                    play('pronunciation_ja_コンピューター.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('コーヒー\ncoffee'),
                  onPressed: (){
                    play('pronunciation_ja_コーヒー.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('コールド\ncold'),
                  onPressed: (){
                    play('pronunciation_ja_コールド.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('コーン\ncorn'),
                  onPressed: (){
                    play('pronunciation_ja_コーン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ゴールド\ngold'),
                  onPressed: (){
                    play('pronunciation_ja_ゴールド.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('シスター\nsister'),
                  onPressed: (){
                    play('pronunciation_ja_シスター.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('シャツ\nshirt'),
                  onPressed: (){
                    play('pronunciation_ja_シャツ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('シュガー\nsugar'),
                  onPressed: (){
                    play('pronunciation_ja_シュガー.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('シーズン\nseason'),
                  onPressed: (){
                    play('pronunciation_ja_シーズン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ジュース\njuice'),
                  onPressed: (){
                    play('pronunciation_ja_ジュース.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ジョブ\njob'),
                  onPressed: (){
                    play('pronunciation_ja_ジョブ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('スカート\nskirt'),
                  onPressed: (){
                    play('pronunciation_ja_スカート.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('スプーン\nspoon'),
                  onPressed: (){
                    play('pronunciation_ja_スプーン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('スポーツ\nsport'),
                  onPressed: (){
                    play('pronunciation_ja_スポーツ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('スロー\nslow'),
                  onPressed: (){
                    play('pronunciation_ja_スロー.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('スープ\nsoup'),
                  onPressed: (){
                    play('pronunciation_ja_スープ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('セブン\nseven'),
                  onPressed: (){
                    play('pronunciation_ja_セブン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('センチメートル\ncentimeter'),
                  onPressed: (){
                    play('pronunciation_ja_センチメートル.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ゼロ\nzero'),
                  onPressed: (){
                    play('pronunciation_ja_ゼロ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('タイト\ntight'),
                  onPressed: (){
                    play('pronunciation_ja_タイト.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ダイヤモンド\ndiamond'),
                  onPressed: (){
                    play('pronunciation_ja_ダイヤモンド.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ダウン\ndown'),
                  onPressed: (){
                    play('pronunciation_ja_ダウン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('チキン\nchicken'),
                  onPressed: (){
                    play('pronunciation_ja_チキン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('チーズ\ncheese'),
                  onPressed: (){
                    play('pronunciation_ja_チーズ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('チーム\nteam'),
                  onPressed: (){
                    play('pronunciation_ja_チーム.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ツール\ntool'),
                  onPressed: (){
                    play('pronunciation_ja_ツール.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('テレビ\ntelevision'),
                  onPressed: (){
                    play('pronunciation_ja_テレビ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('デッド\ndead'),
                  onPressed: (){
                    play('pronunciation_ja_デッド.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('トラック\ntruck'),
                  onPressed: (){
                    play('pronunciation_ja_トラック.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ドア\ndoor'),
                  onPressed: (){
                    play('pronunciation_ja_ドア.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ドット\ndot'),
                  onPressed: (){
                    play('pronunciation_ja_ドット.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ドライ\ndrive'),
                  onPressed: (){
                    play('pronunciation_ja_ドライ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ドル\ndollar'),
                  onPressed: (){
                    play('pronunciation_ja_ドル.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ナイフ\nknife'),
                  onPressed: (){
                    play('pronunciation_ja_ナイフ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ネコ\ncat'),
                  onPressed: (){
                    play('pronunciation_ja_ネコ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ハッピー\nhappy'),
                  onPressed: (){
                    play('pronunciation_ja_ハッピー.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ハード\nhard'),
                  onPressed: (){
                    play('pronunciation_ja_ハード.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ハーフ\nhalf'),
                  onPressed: (){
                    play('pronunciation_ja_ハーフ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('バス\nbus'),
                  onPressed: (){
                    play('pronunciation_ja_バス.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('バナナ\nbanana'),
                  onPressed: (){
                    play('pronunciation_ja_バナナ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('パターン\npattern'),
                  onPressed: (){
                    play('pronunciation_ja_パターン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('パン\nbread'),
                  onPressed: (){
                    play('pronunciation_ja_パン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ビーチ\nbeach'),
                  onPressed: (){
                    play('pronunciation_ja_ビーチ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ビール\nbeer'),
                  onPressed: (){
                    play('pronunciation_ja_ビール.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ピンク\npink'),
                  onPressed: (){
                    play('pronunciation_ja_ピンク.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ピース\npiece'),
                  onPressed: (){
                    play('pronunciation_ja_ピース.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('フォーク\nfork'),
                  onPressed: (){
                    play('pronunciation_ja_フォーク.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('プラスチック\nplastic'),
                  onPressed: (){
                    play('pronunciation_ja_プラスチック.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('プレート\nplate'),
                  onPressed: (){
                    play('pronunciation_ja_プレート.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('プレーヤー\nplayer'),
                  onPressed: (){
                    play('pronunciation_ja_プレーヤー.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('プール\npool'),
                  onPressed: (){
                    play('pronunciation_ja_プール.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ヘア\nhair'),
                  onPressed: (){
                    play('pronunciation_ja_ヘア.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ベッド\nbed'),
                  onPressed: (){
                    play('pronunciation_ja_ベッド.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ペイント\npaint'),
                  onPressed: (){
                    play('pronunciation_ja_ペイント.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ペン\npen'),
                  onPressed: (){
                    play('pronunciation_ja_ペン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ページ\npage'),
                  onPressed: (){
                    play('pronunciation_ja_ページ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ホット\nhot'),
                  onPressed: (){
                    play('pronunciation_ja_ホット.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ホテル\nhotel'),
                  onPressed: (){
                    play('pronunciation_ja_ホテル.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ボトル\nbottle'),
                  onPressed: (){
                    play('pronunciation_ja_ボトル.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ボート\nboat'),
                  onPressed: (){
                    play('pronunciation_ja_ボート.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ポケット\npocket'),
                  onPressed: (){
                    play('pronunciation_ja_ポケット.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('マウス\nmouse'),
                  onPressed: (){
                    play('pronunciation_ja_マウス.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('マガジン\nmagazine'),
                  onPressed: (){
                    play('pronunciation_ja_マガジン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('マネージャー\nmanager'),
                  onPressed: (){
                    play('pronunciation_ja_マネージャー.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ミルク\nmilk'),
                  onPressed: (){
                    play('pronunciation_ja_ミルク.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('メーター\nmeter'),
                  onPressed: (){
                    play('pronunciation_ja_メーター.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ヤード\nyard'),
                  onPressed: (){
                    play('pronunciation_ja_ヤード.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ランチ\nlunch'),
                  onPressed: (){
                    play('pronunciation_ja_ランチ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ランプ\nlamp'),
                  onPressed: (){
                    play('pronunciation_ja_ランプ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('リッチ\nrich'),
                  onPressed: (){
                    play('pronunciation_ja_リッチ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('リップ\nlip'),
                  onPressed: (){
                    play('pronunciation_ja_リップ.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('リング\nring'),
                  onPressed: (){
                    play('pronunciation_ja_リング.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ルート\nroot'),
                  onPressed: (){
                    play('pronunciation_ja_ルート.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('レストラン\nrestaurant'),
                  onPressed: (){
                    play('pronunciation_ja_レストラン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('レモン\nlemon'),
                  onPressed: (){
                    play('pronunciation_ja_レモン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ワイド\nwide'),
                  onPressed: (){
                    play('pronunciation_ja_ワイド.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ワイン\nwine'),
                  onPressed: (){
                    play('pronunciation_ja_ワイン.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('三\nthree'),
                  onPressed: (){
                    play('pronunciation_ja_三.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('上\ntop'),
                  onPressed: (){
                    play('pronunciation_ja_上.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('世界\nworld'),
                  onPressed: (){
                    play('pronunciation_ja_世界.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('丘\nhill'),
                  onPressed: (){
                    play('pronunciation_ja_丘.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('二\ntwo'),
                  onPressed: (){
                    play('pronunciation_ja_二.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('五\nfive'),
                  onPressed: (){
                    play('pronunciation_ja_五.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('人\nperson'),
                  onPressed: (){
                    play('pronunciation_ja_人.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('人間\nhuman'),
                  onPressed: (){
                    play('pronunciation_ja_人間.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('体\nbody'),
                  onPressed: (){
                    play('pronunciation_ja_体.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('価格\nprice'),
                  onPressed: (){
                    play('pronunciation_ja_価格.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('俳優\nactor'),
                  onPressed: (){
                    play('pronunciation_ja_俳優.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('側\nside'),
                  onPressed: (){
                    play('pronunciation_ja_側.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('兄\nbrother'),
                  onPressed: (){
                    play('pronunciation_ja_兄.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('先生\nteacher'),
                  onPressed: (){
                    play('pronunciation_ja_先生.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('六月\nJune'),
                  onPressed: (){
                    play('pronunciation_ja_六月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('兵士\nsoldier'),
                  onPressed: (){
                    play('pronunciation_ja_兵士.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('内部\ninside'),
                  onPressed: (){
                    play('pronunciation_ja_内部.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('写真\nphotograph'),
                  onPressed: (){
                    play('pronunciation_ja_写真.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('冬\nwinter'),
                  onPressed: (){
                    play('pronunciation_ja_冬.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('分\nminute'),
                  onPressed: (){
                    play('pronunciation_ja_分.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('刑務所\nprison'),
                  onPressed: (){
                    play('pronunciation_ja_刑務所.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('前面\nfront'),
                  onPressed: (){
                    play('pronunciation_ja_前面.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('劇場\ntheater'),
                  onPressed: (){
                    play('pronunciation_ja_劇場.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('動物\nanimal'),
                  onPressed: (){
                    play('pronunciation_ja_動物.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('動詞\nverb'),
                  onPressed: (){
                    play('pronunciation_ja_動詞.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('北\nnorth'),
                  onPressed: (){
                    play('pronunciation_ja_北.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('医師\ndoctor'),
                  onPressed: (){
                    play('pronunciation_ja_医師.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十\nten'),
                  onPressed: (){
                    play('pronunciation_ja_十.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十一\neleven'),
                  onPressed: (){
                    play('pronunciation_ja_十一.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('千\nthousand'),
                  onPressed: (){
                    play('pronunciation_ja_千.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('午後\nafternoon'),
                  onPressed: (){
                    play('pronunciation_ja_午後.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('南\nsouth'),
                  onPressed: (){
                    play('pronunciation_ja_南.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('卵\negg'),
                  onPressed: (){
                    play('pronunciation_ja_卵.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('厚い\nthick'),
                  onPressed: (){
                    play('pronunciation_ja_厚い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('友達\nfriend'),
                  onPressed: (){
                    play('pronunciation_ja_友達.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('口\nmouth'),
                  onPressed: (){
                    play('pronunciation_ja_口.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('四\nfour'),
                  onPressed: (){
                    play('pronunciation_ja_四.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('図書館\nlibrary'),
                  onPressed: (){
                    play('pronunciation_ja_図書館.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('土曜日\nSaturday'),
                  onPressed: (){
                    play('pronunciation_ja_土曜日.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('地図\nmap'),
                  onPressed: (){
                    play('pronunciation_ja_地図.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('地獄\nhell'),
                  onPressed: (){
                    play('pronunciation_ja_地獄.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('地球\nEarth'),
                  onPressed: (){
                    play('pronunciation_ja_地球.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('塩\nsalt'),
                  onPressed: (){
                    play('pronunciation_ja_塩.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('壁\nwall'),
                  onPressed: (){
                    play('pronunciation_ja_壁.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('夏\nsummer'),
                  onPressed: (){
                    play('pronunciation_ja_夏.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('外側\noutside'),
                  onPressed: (){
                    play('pronunciation_ja_外側.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('夜\nnight'),
                  onPressed: (){
                    play('pronunciation_ja_夜.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('大声で\nloud'),
                  onPressed: (){
                    play('pronunciation_ja_大声で.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('大学\nuniversity'),
                  onPressed: (){
                    play('pronunciation_ja_大学.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('大統領\npresident'),
                  onPressed: (){
                    play('pronunciation_ja_大統領.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('天井\nceiling'),
                  onPressed: (){
                    play('pronunciation_ja_天井.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('天国\nheaven'),
                  onPressed: (){
                    play('pronunciation_ja_天国.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('太陽\nsun'),
                  onPressed: (){
                    play('pronunciation_ja_太陽.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('夫\nhusband'),
                  onPressed: (){
                    play('pronunciation_ja_夫.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('女の子\ngirl'),
                  onPressed: (){
                    play('pronunciation_ja_女の子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('女性\nfemale'),
                  onPressed: (){
                    play('pronunciation_ja_女性.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('女王\nqueen'),
                  onPressed: (){
                    play('pronunciation_ja_女王.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('妻\nwife'),
                  onPressed: (){
                    play('pronunciation_ja_妻.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('娘\ndaughter'),
                  onPressed: (){
                    play('pronunciation_ja_娘.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('子\nchild'),
                  onPressed: (){
                    play('pronunciation_ja_子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('子音\nconsonant'),
                  onPressed: (){
                    play('pronunciation_ja_子音.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('学校\nschool'),
                  onPressed: (){
                    play('pronunciation_ja_学校.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('学生\nstudent'),
                  onPressed: (){
                    play('pronunciation_ja_学生.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('安いです\ncheap'),
                  onPressed: (){
                    play('pronunciation_ja_安いです.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('宗教\nreligion'),
                  onPressed: (){
                    play('pronunciation_ja_宗教.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('家\nhouse'),
                  onPressed: (){
                    play('pronunciation_ja_家.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('家族\nfamily'),
                  onPressed: (){
                    play('pronunciation_ja_家族.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('寝室\nbedroom'),
                  onPressed: (){
                    play('pronunciation_ja_寝室.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('山\nmountain'),
                  onPressed: (){
                    play('pronunciation_ja_山.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('島\nisland'),
                  onPressed: (){
                    play('pronunciation_ja_島.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('川\nriver'),
                  onPressed: (){
                    play('pronunciation_ja_川.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('市場\nmarket'),
                  onPressed: (){
                    play('pronunciation_ja_市場.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('帽子\nhat'),
                  onPressed: (){
                    play('pronunciation_ja_帽子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('平和\npeace'),
                  onPressed: (){
                    play('pronunciation_ja_平和.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('平方\nsquare'),
                  onPressed: (){
                    play('pronunciation_ja_平方.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('年\nyear'),
                  onPressed: (){
                    play('pronunciation_ja_年.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('床\nfloor'),
                  onPressed: (){
                    play('pronunciation_ja_床.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('庭園\ngarden'),
                  onPressed: (){
                    play('pronunciation_ja_庭園.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('建物\nbuilding'),
                  onPressed: (){
                    play('pronunciation_ja_建物.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('弁護士\nlawyer'),
                  onPressed: (){
                    play('pronunciation_ja_弁護士.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('弱い\nweak'),
                  onPressed: (){
                    play('pronunciation_ja_弱い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('強い\nstrong'),
                  onPressed: (){
                    play('pronunciation_ja_強い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('形容詞\nadjective'),
                  onPressed: (){
                    play('pronunciation_ja_形容詞.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('彼\nhe'),
                  onPressed: (){
                    play('pronunciation_ja_彼.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('彼ら\nthey'),
                  onPressed: (){
                    play('pronunciation_ja_彼ら.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('彼女\nshe'),
                  onPressed: (){
                    play('pronunciation_ja_彼女.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('息子\nson'),
                  onPressed: (){
                    play('pronunciation_ja_息子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('悪い\nbad'),
                  onPressed: (){
                    play('pronunciation_ja_悪い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('悲しい\nsad'),
                  onPressed: (){
                    play('pronunciation_ja_悲しい.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('戦争\nwar'),
                  onPressed: (){
                    play('pronunciation_ja_戦争.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('技術\ntechnology'),
                  onPressed: (){
                    play('pronunciation_ja_技術.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('指\nfinger'),
                  onPressed: (){
                    play('pronunciation_ja_指.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('接地\nground'),
                  onPressed: (){
                    play('pronunciation_ja_接地.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('教会\nchurch'),
                  onPressed: (){
                    play('pronunciation_ja_教会.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('数\nnumber'),
                  onPressed: (){
                    play('pronunciation_ja_数.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('文字\nletter'),
                  onPressed: (){
                    play('pronunciation_ja_文字.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('新聞\nnewspaper'),
                  onPressed: (){
                    play('pronunciation_ja_新聞.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('方向\ndirection'),
                  onPressed: (){
                    play('pronunciation_ja_方向.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('日\ndate'),
                  onPressed: (){
                    play('pronunciation_ja_日.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('日曜日\nSunday'),
                  onPressed: (){
                    play('pronunciation_ja_日曜日.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('星\nstar'),
                  onPressed: (){
                    play('pronunciation_ja_星.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('映画\nmovie'),
                  onPressed: (){
                    play('pronunciation_ja_映画.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('時\ntime'),
                  onPressed: (){
                    play('pronunciation_ja_時.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('時間\nhour'),
                  onPressed: (){
                    play('pronunciation_ja_時間.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('月\nmonth'),
                  onPressed: (){
                    play('pronunciation_ja_月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('月曜\nMonday'),
                  onPressed: (){
                    play('pronunciation_ja_月曜.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('朝\nmorning'),
                  onPressed: (){
                    play('pronunciation_ja_朝.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('朝ごはん\nbreakfast'),
                  onPressed: (){
                    play('pronunciation_ja_朝ごはん.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('木\ntree'),
                  onPressed: (){
                    play('pronunciation_ja_木.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('木曜日\nThursday'),
                  onPressed: (){
                    play('pronunciation_ja_木曜日.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('木材\nwood'),
                  onPressed: (){
                    play('pronunciation_ja_木材.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('本\nbook'),
                  onPressed: (){
                    play('pronunciation_ja_本.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('東\neast'),
                  onPressed: (){
                    play('pronunciation_ja_東.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('林檎\napple'),
                  onPressed: (){
                    play('pronunciation_ja_林檎.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('染色\nstain'),
                  onPressed: (){
                    play('pronunciation_ja_染色.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('柔らかい\nsoft'),
                  onPressed: (){
                    play('pronunciation_ja_柔らかい.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('森林\nforest'),
                  onPressed: (){
                    play('pronunciation_ja_森林.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('歌\nsong'),
                  onPressed: (){
                    play('pronunciation_ja_歌.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('歯\ntooth'),
                  onPressed: (){
                    play('pronunciation_ja_歯.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('死\ndeath'),
                  onPressed: (){
                    play('pronunciation_ja_死.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('母\nmother'),
                  onPressed: (){
                    play('pronunciation_ja_母.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('母音\nvowel'),
                  onPressed: (){
                    play('pronunciation_ja_母音.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('水曜日\nWednesday'),
                  onPressed: (){
                    play('pronunciation_ja_水曜日.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('氷\nice'),
                  onPressed: (){
                    play('pronunciation_ja_氷.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('汚れた\ndirty'),
                  onPressed: (){
                    play('pronunciation_ja_汚れた.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('油\noil'),
                  onPressed: (){
                    play('pronunciation_ja_油.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('浅い\nshallow'),
                  onPressed: (){
                    play('pronunciation_ja_浅い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('海\nsea'),
                  onPressed: (){
                    play('pronunciation_ja_海.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('海洋\nocean'),
                  onPressed: (){
                    play('pronunciation_ja_海洋.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('深い\ndeep'),
                  onPressed: (){
                    play('pronunciation_ja_深い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('温度\ntemperature'),
                  onPressed: (){
                    play('pronunciation_ja_温度.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('湖\nlake'),
                  onPressed: (){
                    play('pronunciation_ja_湖.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('火曜日\nTuesday'),
                  onPressed: (){
                    play('pronunciation_ja_火曜日.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('無線\nradio'),
                  onPressed: (){
                    play('pronunciation_ja_無線.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('牛\ncow'),
                  onPressed: (){
                    play('pronunciation_ja_牛.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('牛肉\nbeef'),
                  onPressed: (){
                    play('pronunciation_ja_牛肉.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('犠牲者\nvictim'),
                  onPressed: (){
                    play('pronunciation_ja_犠牲者.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('犬\ndog'),
                  onPressed: (){
                    play('pronunciation_ja_犬.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('狭い\nnarrow'),
                  onPressed: (){
                    play('pronunciation_ja_狭い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('玉\nball'),
                  onPressed: (){
                    play('pronunciation_ja_玉.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('生きている\nalive'),
                  onPressed: (){
                    play('pronunciation_ja_生きている.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('男の子\nboy'),
                  onPressed: (){
                    play('pronunciation_ja_男の子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('男性\nmale'),
                  onPressed: (){
                    play('pronunciation_ja_男性.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('画像\nimage'),
                  onPressed: (){
                    play('pronunciation_ja_画像.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('画面\nscreen'),
                  onPressed: (){
                    play('pronunciation_ja_画面.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('疾患\ndisease'),
                  onPressed: (){
                    play('pronunciation_ja_疾患.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('病気\nsick'),
                  onPressed: (){
                    play('pronunciation_ja_病気.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('病院\nhospital'),
                  onPressed: (){
                    play('pronunciation_ja_病院.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('百\nhundred'),
                  onPressed: (){
                    play('pronunciation_ja_百.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('百万\nmillion'),
                  onPressed: (){
                    play('pronunciation_ja_百万.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('石鹸\nsoap'),
                  onPressed: (){
                    play('pronunciation_ja_石鹸.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('砂\nsand'),
                  onPressed: (){
                    play('pronunciation_ja_砂.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('祖母\ngrandmother'),
                  onPressed: (){
                    play('pronunciation_ja_祖母.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('祖父\ngrandfather'),
                  onPressed: (){
                    play('pronunciation_ja_祖父.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('神\nGod'),
                  onPressed: (){
                    play('pronunciation_ja_神.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('祭司\npriest'),
                  onPressed: (){
                    play('pronunciation_ja_祭司.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('私\nI'),
                  onPressed: (){
                    play('pronunciation_ja_私.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('秘書\nsecretary'),
                  onPressed: (){
                    play('pronunciation_ja_秘書.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('穴\nhole'),
                  onPressed: (){
                    play('pronunciation_ja_穴.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('空\nsky'),
                  onPressed: (){
                    play('pronunciation_ja_空.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('空気\nair'),
                  onPressed: (){
                    play('pronunciation_ja_空気.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('空港\nairport'),
                  onPressed: (){
                    play('pronunciation_ja_空港.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('窓\nwindow'),
                  onPressed: (){
                    play('pronunciation_ja_窓.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('粘土\nclay'),
                  onPressed: (){
                    play('pronunciation_ja_粘土.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('結婚\nmarriage'),
                  onPressed: (){
                    play('pronunciation_ja_結婚.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('結婚式\nwedding'),
                  onPressed: (){
                    play('pronunciation_ja_結婚式.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('綺麗な\nbeautiful'),
                  onPressed: (){
                    play('pronunciation_ja_綺麗な.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('緑\ngreen'),
                  onPressed: (){
                    play('pronunciation_ja_緑.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('耳\near'),
                  onPressed: (){
                    play('pronunciation_ja_耳.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('聴覚障害者\ndeaf'),
                  onPressed: (){
                    play('pronunciation_ja_聴覚障害者.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('肌\nskin'),
                  onPressed: (){
                    play('pronunciation_ja_肌.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('背が高い\ntall'),
                  onPressed: (){
                    play('pronunciation_ja_背が高い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('脚\nleg'),
                  onPressed: (){
                    play('pronunciation_ja_脚.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('脳\nbrain'),
                  onPressed: (){
                    play('pronunciation_ja_脳.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('腕\narm'),
                  onPressed: (){
                    play('pronunciation_ja_腕.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('膝\nknee'),
                  onPressed: (){
                    play('pronunciation_ja_膝.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('自然\nnature'),
                  onPressed: (){
                    play('pronunciation_ja_自然.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('自転車\nbicycle'),
                  onPressed: (){
                    play('pronunciation_ja_自転車.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('舌\ntongue'),
                  onPressed: (){
                    play('pronunciation_ja_舌.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('良い\ngood'),
                  onPressed: (){
                    play('pronunciation_ja_良い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('花\nflower'),
                  onPressed: (){
                    play('pronunciation_ja_花.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('若い\nyoung'),
                  onPressed: (){
                    play('pronunciation_ja_若い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('草\ngrass'),
                  onPressed: (){
                    play('pronunciation_ja_草.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('葉\nleaf'),
                  onPressed: (){
                    play('pronunciation_ja_葉.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('薄い\nthin'),
                  onPressed: (){
                    play('pronunciation_ja_薄い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('薬\nmedicine'),
                  onPressed: (){
                    play('pronunciation_ja_薬.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('血液\nblood'),
                  onPressed: (){
                    play('pronunciation_ja_血液.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('行進\nMarch'),
                  onPressed: (){
                    play('pronunciation_ja_行進.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('衣類\nclothing'),
                  onPressed: (){
                    play('pronunciation_ja_衣類.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('裁判所\ncourt'),
                  onPressed: (){
                    play('pronunciation_ja_裁判所.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('褐色\nbrown'),
                  onPressed: (){
                    play('pronunciation_ja_褐色.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('西\nwest'),
                  onPressed: (){
                    play('pronunciation_ja_西.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('親\nparent'),
                  onPressed: (){
                    play('pronunciation_ja_親.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('警察\npolice'),
                  onPressed: (){
                    play('pronunciation_ja_警察.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('谷\nvalley'),
                  onPressed: (){
                    play('pronunciation_ja_谷.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('豚\npig'),
                  onPressed: (){
                    play('pronunciation_ja_豚.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('豚肉\npork'),
                  onPressed: (){
                    play('pronunciation_ja_豚肉.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('貧しい\npoor'),
                  onPressed: (){
                    play('pronunciation_ja_貧しい.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('贈り物\ngift'),
                  onPressed: (){
                    play('pronunciation_ja_贈り物.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('赤\nred'),
                  onPressed: (){
                    play('pronunciation_ja_赤.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('赤ちゃん\nbaby'),
                  onPressed: (){
                    play('pronunciation_ja_赤ちゃん.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('車\ncar'),
                  onPressed: (){
                    play('pronunciation_ja_車.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('軍\narmy'),
                  onPressed: (){
                    play('pronunciation_ja_軍.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('速い\nfast'),
                  onPressed: (){
                    play('pronunciation_ja_速い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('週間\nweek'),
                  onPressed: (){
                    play('pronunciation_ja_週間.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('選挙\nelection'),
                  onPressed: (){
                    play('pronunciation_ja_選挙.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('醜い\nugly'),
                  onPressed: (){
                    play('pronunciation_ja_醜い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('重量\nweight'),
                  onPressed: (){
                    play('pronunciation_ja_重量.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('金属\nmetal'),
                  onPressed: (){
                    play('pronunciation_ja_金属.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('金曜日\nFriday'),
                  onPressed: (){
                    play('pronunciation_ja_金曜日.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('針\nneedle'),
                  onPressed: (){
                    play('pronunciation_ja_針.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('鉛筆\npencil'),
                  onPressed: (){
                    play('pronunciation_ja_鉛筆.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('銀\nsilver'),
                  onPressed: (){
                    play('pronunciation_ja_銀.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('銃\ngun'),
                  onPressed: (){
                    play('pronunciation_ja_銃.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('銅\ncopper'),
                  onPressed: (){
                    play('pronunciation_ja_銅.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('隣人\nneighbor'),
                  onPressed: (){
                    play('pronunciation_ja_隣人.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('電話\nphone'),
                  onPressed: (){
                    play('pronunciation_ja_電話.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('静か\nquiet'),
                  onPressed: (){
                    play('pronunciation_ja_静か.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('音\nsound'),
                  onPressed: (){
                    play('pronunciation_ja_音.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('音楽\nmusic'),
                  onPressed: (){
                    play('pronunciation_ja_音楽.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('頭\nhead'),
                  onPressed: (){
                    play('pronunciation_ja_頭.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('飛行機\nplane'),
                  onPressed: (){
                    play('pronunciation_ja_飛行機.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('骨\nbone'),
                  onPressed: (){
                    play('pronunciation_ja_骨.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('高い\nhigh'),
                  onPressed: (){
                    play('pronunciation_ja_高い.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('高価な\nexpensive'),
                  onPressed: (){
                    play('pronunciation_ja_高価な.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('鳥\nbird'),
                  onPressed: (){
                    play('pronunciation_ja_鳥.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('黄\nyellow'),
                  onPressed: (){
                    play('pronunciation_ja_黄.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('黒\nblack'),
                  onPressed: (){
                    play('pronunciation_ja_黒.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('鼻\nnose'),
                  onPressed: (){
                    play('pronunciation_ja_鼻.mp3');
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
                  child: Text('1\none'),
                  onPressed: (){
                    play('pronunciation_pt_1.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('abril\nApril'),
                  onPressed: (){
                    play('pronunciation_pt_abril.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('acima\nup'),
                  onPressed: (){
                    play('pronunciation_pt_acima.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('adjetivo\nadjective'),
                  onPressed: (){
                    play('pronunciation_pt_adjetivo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('adulto\nadult'),
                  onPressed: (){
                    play('pronunciation_pt_adulto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('advogado\nlawyer'),
                  onPressed: (){
                    play('pronunciation_pt_advogado.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('aeroporto\nairport'),
                  onPressed: (){
                    play('pronunciation_pt_aeroporto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('agosto\nAugust'),
                  onPressed: (){
                    play('pronunciation_pt_agosto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('agulha\nneedle'),
                  onPressed: (){
                    play('pronunciation_pt_agulha.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('almoço\nlunch'),
                  onPressed: (){
                    play('pronunciation_pt_almoço.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('alta\ntall'),
                  onPressed: (){
                    play('pronunciation_pt_alta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('alto\nloud'),
                  onPressed: (){
                    play('pronunciation_pt_alto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('aluna\nstudent'),
                  onPressed: (){
                    play('pronunciation_pt_aluna.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('amarelo\nyellow'),
                  onPressed: (){
                    play('pronunciation_pt_amarelo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('amigo\nfriend'),
                  onPressed: (){
                    play('pronunciation_pt_amigo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('anel\nring'),
                  onPressed: (){
                    play('pronunciation_pt_anel.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('animal\nanimal'),
                  onPressed: (){
                    play('pronunciation_pt_animal.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ano\nyear'),
                  onPressed: (){
                    play('pronunciation_pt_ano.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('apartamento\napartment'),
                  onPressed: (){
                    play('pronunciation_pt_apartamento.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ar\nair'),
                  onPressed: (){
                    play('pronunciation_pt_ar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('areia\nsand'),
                  onPressed: (){
                    play('pronunciation_pt_areia.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('argila\nclay'),
                  onPressed: (){
                    play('pronunciation_pt_argila.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('arroz\nrice'),
                  onPressed: (){
                    play('pronunciation_pt_arroz.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('arte\nart'),
                  onPressed: (){
                    play('pronunciation_pt_arte.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('artista\nartist'),
                  onPressed: (){
                    play('pronunciation_pt_artista.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('asa\nwing'),
                  onPressed: (){
                    play('pronunciation_pt_asa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ator\nactor'),
                  onPressed: (){
                    play('pronunciation_pt_ator.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('avião\nplane'),
                  onPressed: (){
                    play('pronunciation_pt_avião.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('avó\ngrandmother'),
                  onPressed: (){
                    play('pronunciation_pt_avó.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('avô\ngrandfather'),
                  onPressed: (){
                    play('pronunciation_pt_avô.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('azul\nblue'),
                  onPressed: (){
                    play('pronunciation_pt_azul.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('açúcar\nsugar'),
                  onPressed: (){
                    play('pronunciation_pt_açúcar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('baixa\ndown'),
                  onPressed: (){
                    play('pronunciation_pt_baixa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('baixo\nlow'),
                  onPressed: (){
                    play('pronunciation_pt_baixo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('banana\nbanana'),
                  onPressed: (){
                    play('pronunciation_pt_banana.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('banco\nbank'),
                  onPressed: (){
                    play('pronunciation_pt_banco.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('banheiro\nbathroom'),
                  onPressed: (){
                    play('pronunciation_pt_banheiro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('barato\ncheap'),
                  onPressed: (){
                    play('pronunciation_pt_barato.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('barba\nbeard'),
                  onPressed: (){
                    play('pronunciation_pt_barba.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('barco\nboat'),
                  onPressed: (){
                    play('pronunciation_pt_barco.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bebida\nbeverage'),
                  onPressed: (){
                    play('pronunciation_pt_bebida.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bebê\nbaby'),
                  onPressed: (){
                    play('pronunciation_pt_bebê.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('biblioteca\nlibrary'),
                  onPressed: (){
                    play('pronunciation_pt_biblioteca.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bicicleta\nbicycle'),
                  onPressed: (){
                    play('pronunciation_pt_bicicleta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bilhão\nbillion'),
                  onPressed: (){
                    play('pronunciation_pt_bilhão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('boca\nmouth'),
                  onPressed: (){
                    play('pronunciation_pt_boca.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bola\nball'),
                  onPressed: (){
                    play('pronunciation_pt_bola.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bolo\ncake'),
                  onPressed: (){
                    play('pronunciation_pt_bolo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('bolso\npocket'),
                  onPressed: (){
                    play('pronunciation_pt_bolso.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('branco\nwhite'),
                  onPressed: (){
                    play('pronunciation_pt_branco.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('braço\narm'),
                  onPressed: (){
                    play('pronunciation_pt_braço.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cabelo\nhair'),
                  onPressed: (){
                    play('pronunciation_pt_cabelo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cabeça\nhead'),
                  onPressed: (){
                    play('pronunciation_pt_cabeça.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('café\ncoffee'),
                  onPressed: (){
                    play('pronunciation_pt_café.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('calça\npants'),
                  onPressed: (){
                    play('pronunciation_pt_calça.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cama\nbed'),
                  onPressed: (){
                    play('pronunciation_pt_cama.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('caminhão\ntruck'),
                  onPressed: (){
                    play('pronunciation_pt_caminhão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('camisa\nshirt'),
                  onPressed: (){
                    play('pronunciation_pt_camisa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('camiseta\nT'),
                  onPressed: (){
                    play('pronunciation_pt_camiseta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('caneta\npen'),
                  onPressed: (){
                    play('pronunciation_pt_caneta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('canção\nsong'),
                  onPressed: (){
                    play('pronunciation_pt_canção.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('carne\nbeef'),
                  onPressed: (){
                    play('pronunciation_pt_carne.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('caro\nexpensive'),
                  onPressed: (){
                    play('pronunciation_pt_caro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('carro\ncar'),
                  onPressed: (){
                    play('pronunciation_pt_carro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('carta\nletter'),
                  onPressed: (){
                    play('pronunciation_pt_carta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cartão\ncard'),
                  onPressed: (){
                    play('pronunciation_pt_cartão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('casa\nhouse'),
                  onPressed: (){
                    play('pronunciation_pt_casa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('casamento\nmarriage'),
                  onPressed: (){
                    play('pronunciation_pt_casamento.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cavalo\nhorse'),
                  onPressed: (){
                    play('pronunciation_pt_cavalo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cem\nhundred'),
                  onPressed: (){
                    play('pronunciation_pt_cem.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('centímetro\ncentimeter'),
                  onPressed: (){
                    play('pronunciation_pt_centímetro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('chapéu\nhat'),
                  onPressed: (){
                    play('pronunciation_pt_chapéu.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('chave\nkey'),
                  onPressed: (){
                    play('pronunciation_pt_chave.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('chá\ntea'),
                  onPressed: (){
                    play('pronunciation_pt_chá.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('chão\nfloor'),
                  onPressed: (){
                    play('pronunciation_pt_chão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cidade\ncity'),
                  onPressed: (){
                    play('pronunciation_pt_cidade.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cinco\nfive'),
                  onPressed: (){
                    play('pronunciation_pt_cinco.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cinquenta\nfifty'),
                  onPressed: (){
                    play('pronunciation_pt_cinquenta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cinzento\ngray'),
                  onPressed: (){
                    play('pronunciation_pt_cinzento.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cobertura\nroof'),
                  onPressed: (){
                    play('pronunciation_pt_cobertura.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cobre\ncopper'),
                  onPressed: (){
                    play('pronunciation_pt_cobre.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('colher\nspoon'),
                  onPressed: (){
                    play('pronunciation_pt_colher.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('computador\ncomputer'),
                  onPressed: (){
                    play('pronunciation_pt_computador.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('consoante\nconsonant'),
                  onPressed: (){
                    play('pronunciation_pt_consoante.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('construção\nbuilding'),
                  onPressed: (){
                    play('pronunciation_pt_construção.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('conta\ncount'),
                  onPressed: (){
                    play('pronunciation_pt_conta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('copo\ncup'),
                  onPressed: (){
                    play('pronunciation_pt_copo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('coração\nheart'),
                  onPressed: (){
                    play('pronunciation_pt_coração.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('corpo\nbody'),
                  onPressed: (){
                    play('pronunciation_pt_corpo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cozinha\ncook'),
                  onPressed: (){
                    play('pronunciation_pt_cozinha.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('criança\nchild'),
                  onPressed: (){
                    play('pronunciation_pt_criança.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('curvado\ncurved'),
                  onPressed: (){
                    play('pronunciation_pt_curvado.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('cérebro\nbrain'),
                  onPressed: (){
                    play('pronunciation_pt_cérebro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('céu\nheaven'),
                  onPressed: (){
                    play('pronunciation_pt_céu.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dança\ndance'),
                  onPressed: (){
                    play('pronunciation_pt_dança.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dedo\nfinger'),
                  onPressed: (){
                    play('pronunciation_pt_dedo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dente\ntooth'),
                  onPressed: (){
                    play('pronunciation_pt_dente.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dentro\ninside'),
                  onPressed: (){
                    play('pronunciation_pt_dentro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dez\nten'),
                  onPressed: (){
                    play('pronunciation_pt_dez.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dezembro\nDecember'),
                  onPressed: (){
                    play('pronunciation_pt_dezembro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dezenove\nnineteen'),
                  onPressed: (){
                    play('pronunciation_pt_dezenove.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dezesseis\nsixteen'),
                  onPressed: (){
                    play('pronunciation_pt_dezesseis.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dezessete\nseventeen'),
                  onPressed: (){
                    play('pronunciation_pt_dezessete.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dezoito\neighteen'),
                  onPressed: (){
                    play('pronunciation_pt_dezoito.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dia\nday'),
                  onPressed: (){
                    play('pronunciation_pt_dia.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('diamante\ndiamond'),
                  onPressed: (){
                    play('pronunciation_pt_diamante.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dinheiro\nmoney'),
                  onPressed: (){
                    play('pronunciation_pt_dinheiro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('direção\ndirection'),
                  onPressed: (){
                    play('pronunciation_pt_direção.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('doente\nsick'),
                  onPressed: (){
                    play('pronunciation_pt_doente.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('doença\ndisease'),
                  onPressed: (){
                    play('pronunciation_pt_doença.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dois\ntwo'),
                  onPressed: (){
                    play('pronunciation_pt_dois.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dor\npain'),
                  onPressed: (){
                    play('pronunciation_pt_dor.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('doze\ntwelve'),
                  onPressed: (){
                    play('pronunciation_pt_doze.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('dólar\ndollar'),
                  onPressed: (){
                    play('pronunciation_pt_dólar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ela\nshe'),
                  onPressed: (){
                    play('pronunciation_pt_ela.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ele\nhe'),
                  onPressed: (){
                    play('pronunciation_pt_ele.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('eleição\nelection'),
                  onPressed: (){
                    play('pronunciation_pt_eleição.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('eles\nthey'),
                  onPressed: (){
                    play('pronunciation_pt_eles.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('eletrônicos\nelectronics'),
                  onPressed: (){
                    play('pronunciation_pt_eletrônicos.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('energia\nenergy'),
                  onPressed: (){
                    play('pronunciation_pt_energia.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('equipe\nteam'),
                  onPressed: (){
                    play('pronunciation_pt_equipe.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('escola\nschool'),
                  onPressed: (){
                    play('pronunciation_pt_escola.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('escritório\noffice'),
                  onPressed: (){
                    play('pronunciation_pt_escritório.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('esporte\nsport'),
                  onPressed: (){
                    play('pronunciation_pt_esporte.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('esposa\nwife'),
                  onPressed: (){
                    play('pronunciation_pt_esposa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('exército\narmy'),
                  onPressed: (){
                    play('pronunciation_pt_exército.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('faca\nknife'),
                  onPressed: (){
                    play('pronunciation_pt_faca.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fala\nspeak/say'),
                  onPressed: (){
                    play('pronunciation_pt_fala.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('famoso\nfamous'),
                  onPressed: (){
                    play('pronunciation_pt_famoso.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('família\nfamily'),
                  onPressed: (){
                    play('pronunciation_pt_família.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('feio\nugly'),
                  onPressed: (){
                    play('pronunciation_pt_feio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('feliz\nhappy'),
                  onPressed: (){
                    play('pronunciation_pt_feliz.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ferramenta\ntool'),
                  onPressed: (){
                    play('pronunciation_pt_ferramenta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fevereiro\nFebruary'),
                  onPressed: (){
                    play('pronunciation_pt_fevereiro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('filha\ndaughter'),
                  onPressed: (){
                    play('pronunciation_pt_filha.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('filho\nson'),
                  onPressed: (){
                    play('pronunciation_pt_filho.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('filme\nmovie'),
                  onPressed: (){
                    play('pronunciation_pt_filme.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fino\nthin'),
                  onPressed: (){
                    play('pronunciation_pt_fino.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('flor\nflower'),
                  onPressed: (){
                    play('pronunciation_pt_flor.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('floresta\nforest'),
                  onPressed: (){
                    play('pronunciation_pt_floresta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('folha\nleaf'),
                  onPressed: (){
                    play('pronunciation_pt_folha.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fotografia\nphotograph'),
                  onPressed: (){
                    play('pronunciation_pt_fotografia.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fraco\nweak'),
                  onPressed: (){
                    play('pronunciation_pt_fraco.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('frango\nchicken'),
                  onPressed: (){
                    play('pronunciation_pt_frango.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('frente\nfront'),
                  onPressed: (){
                    play('pronunciation_pt_frente.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('frio\ncold'),
                  onPressed: (){
                    play('pronunciation_pt_frio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('fêmea\nfemale'),
                  onPressed: (){
                    play('pronunciation_pt_fêmea.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('garfo\nfork'),
                  onPressed: (){
                    play('pronunciation_pt_garfo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('garrafa\nbottle'),
                  onPressed: (){
                    play('pronunciation_pt_garrafa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('garçom\nwaiter'),
                  onPressed: (){
                    play('pronunciation_pt_garçom.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('gato\ncat'),
                  onPressed: (){
                    play('pronunciation_pt_gato.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('gelo\nice'),
                  onPressed: (){
                    play('pronunciation_pt_gelo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('guerra\nwar'),
                  onPressed: (){
                    play('pronunciation_pt_guerra.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('homem\nman'),
                  onPressed: (){
                    play('pronunciation_pt_homem.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hora\nhour'),
                  onPressed: (){
                    play('pronunciation_pt_hora.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hospital\nhospital'),
                  onPressed: (){
                    play('pronunciation_pt_hospital.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('hotel\nhotel'),
                  onPressed: (){
                    play('pronunciation_pt_hotel.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('humano\nhuman'),
                  onPressed: (){
                    play('pronunciation_pt_humano.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ilha\nisland'),
                  onPressed: (){
                    play('pronunciation_pt_ilha.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('imagem\nimage'),
                  onPressed: (){
                    play('pronunciation_pt_imagem.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('inferior\nbottom'),
                  onPressed: (){
                    play('pronunciation_pt_inferior.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('inferno\nhell'),
                  onPressed: (){
                    play('pronunciation_pt_inferno.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('inverno\nwinter'),
                  onPressed: (){
                    play('pronunciation_pt_inverno.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('irmã\nsister'),
                  onPressed: (){
                    play('pronunciation_pt_irmã.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('irmão\nbrother'),
                  onPressed: (){
                    play('pronunciation_pt_irmão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('isto\nit'),
                  onPressed: (){
                    play('pronunciation_pt_isto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('janeiro\nJanuary'),
                  onPressed: (){
                    play('pronunciation_pt_janeiro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('janela\nwindow'),
                  onPressed: (){
                    play('pronunciation_pt_janela.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('jantar\ndinner'),
                  onPressed: (){
                    play('pronunciation_pt_jantar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('jardim\ngarden'),
                  onPressed: (){
                    play('pronunciation_pt_jardim.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('joelho\nknee'),
                  onPressed: (){
                    play('pronunciation_pt_joelho.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('jogador\nplayer'),
                  onPressed: (){
                    play('pronunciation_pt_jogador.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('jogos\ngame'),
                  onPressed: (){
                    play('pronunciation_pt_jogos.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('jornal\nnewspaper'),
                  onPressed: (){
                    play('pronunciation_pt_jornal.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('jovem\nyoung'),
                  onPressed: (){
                    play('pronunciation_pt_jovem.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('justa\ntight'),
                  onPressed: (){
                    play('pronunciation_pt_justa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lado\nside'),
                  onPressed: (){
                    play('pronunciation_pt_lado.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lago\nlake'),
                  onPressed: (){
                    play('pronunciation_pt_lago.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('leite\nmilk'),
                  onPressed: (){
                    play('pronunciation_pt_leite.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lento\nslow'),
                  onPressed: (){
                    play('pronunciation_pt_lento.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('leste\neast'),
                  onPressed: (){
                    play('pronunciation_pt_leste.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('limitar\nnarrow'),
                  onPressed: (){
                    play('pronunciation_pt_limitar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('limão\nlemon'),
                  onPressed: (){
                    play('pronunciation_pt_limão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('livro\nbook'),
                  onPressed: (){
                    play('pronunciation_pt_livro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('localização\nlocation'),
                  onPressed: (){
                    play('pronunciation_pt_localização.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lua\nmoon'),
                  onPressed: (){
                    play('pronunciation_pt_lua.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('luminária\nlamp'),
                  onPressed: (){
                    play('pronunciation_pt_luminária.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('luta\nfight'),
                  onPressed: (){
                    play('pronunciation_pt_luta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lábio\nlip'),
                  onPressed: (){
                    play('pronunciation_pt_lábio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('lápis\npencil'),
                  onPressed: (){
                    play('pronunciation_pt_lápis.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('língua\ntongue'),
                  onPressed: (){
                    play('pronunciation_pt_língua.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('madeira\nwood'),
                  onPressed: (){
                    play('pronunciation_pt_madeira.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mancha\nstain'),
                  onPressed: (){
                    play('pronunciation_pt_mancha.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('manhã\nmorning'),
                  onPressed: (){
                    play('pronunciation_pt_manhã.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mapa\nmap'),
                  onPressed: (){
                    play('pronunciation_pt_mapa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mar\nsea'),
                  onPressed: (){
                    play('pronunciation_pt_mar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('marido\nhusband'),
                  onPressed: (){
                    play('pronunciation_pt_marido.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('masculino\nmale'),
                  onPressed: (){
                    play('pronunciation_pt_masculino.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('material\nmaterial'),
                  onPressed: (){
                    play('pronunciation_pt_material.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('maçã\napple'),
                  onPressed: (){
                    play('pronunciation_pt_maçã.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('menina\ngirl'),
                  onPressed: (){
                    play('pronunciation_pt_menina.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mercado\nmarket'),
                  onPressed: (){
                    play('pronunciation_pt_mercado.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mesa\ntable'),
                  onPressed: (){
                    play('pronunciation_pt_mesa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('metade\nhalf'),
                  onPressed: (){
                    play('pronunciation_pt_metade.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('metal\nmetal'),
                  onPressed: (){
                    play('pronunciation_pt_metal.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('metro\nmeter'),
                  onPressed: (){
                    play('pronunciation_pt_metro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mil\nthousand'),
                  onPressed: (){
                    play('pronunciation_pt_mil.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('milho\ncorn'),
                  onPressed: (){
                    play('pronunciation_pt_milho.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('milhão\nmillion'),
                  onPressed: (){
                    play('pronunciation_pt_milhão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('minuto\nminute'),
                  onPressed: (){
                    play('pronunciation_pt_minuto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('montanha\nmountain'),
                  onPressed: (){
                    play('pronunciation_pt_montanha.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('morte\ndeath'),
                  onPressed: (){
                    play('pronunciation_pt_morte.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('morto\ndead'),
                  onPressed: (){
                    play('pronunciation_pt_morto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('motor\nengine'),
                  onPressed: (){
                    play('pronunciation_pt_motor.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mulher\nwoman'),
                  onPressed: (){
                    play('pronunciation_pt_mulher.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mundo\nworld'),
                  onPressed: (){
                    play('pronunciation_pt_mundo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mãe\nmother'),
                  onPressed: (){
                    play('pronunciation_pt_mãe.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mão\nhand'),
                  onPressed: (){
                    play('pronunciation_pt_mão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('médico\ndoctor'),
                  onPressed: (){
                    play('pronunciation_pt_médico.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('mês\nmonth'),
                  onPressed: (){
                    play('pronunciation_pt_mês.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('música\nmusic'),
                  onPressed: (){
                    play('pronunciation_pt_música.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('nariz\nnose'),
                  onPressed: (){
                    play('pronunciation_pt_nariz.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('natureza\nnature'),
                  onPressed: (){
                    play('pronunciation_pt_natureza.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('navio\nship'),
                  onPressed: (){
                    play('pronunciation_pt_navio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('noite\nnight'),
                  onPressed: (){
                    play('pronunciation_pt_noite.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('norte\nnorth'),
                  onPressed: (){
                    play('pronunciation_pt_norte.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('nove\nnine'),
                  onPressed: (){
                    play('pronunciation_pt_nove.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('novembro\nNovember'),
                  onPressed: (){
                    play('pronunciation_pt_novembro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('noventa\nninety'),
                  onPressed: (){
                    play('pronunciation_pt_noventa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('nuclear\nnuclear'),
                  onPressed: (){
                    play('pronunciation_pt_nuclear.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('não\nno'),
                  onPressed: (){
                    play('pronunciation_pt_não.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('nós\nwe'),
                  onPressed: (){
                    play('pronunciation_pt_nós.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('número\nnumber'),
                  onPressed: (){
                    play('pronunciation_pt_número.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('oceano\nocean'),
                  onPressed: (){
                    play('pronunciation_pt_oceano.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('oeste\nwest'),
                  onPressed: (){
                    play('pronunciation_pt_oeste.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('oitenta\neighty'),
                  onPressed: (){
                    play('pronunciation_pt_oitenta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('oito\neight'),
                  onPressed: (){
                    play('pronunciation_pt_oito.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ombro\nshoulder'),
                  onPressed: (){
                    play('pronunciation_pt_ombro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('onze\neleven'),
                  onPressed: (){
                    play('pronunciation_pt_onze.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('orelha\near'),
                  onPressed: (){
                    play('pronunciation_pt_orelha.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('osso\nbone'),
                  onPressed: (){
                    play('pronunciation_pt_osso.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ouro\ngold'),
                  onPressed: (){
                    play('pronunciation_pt_ouro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ovo\negg'),
                  onPressed: (){
                    play('pronunciation_pt_ovo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('padronizar\npattern'),
                  onPressed: (){
                    play('pronunciation_pt_padronizar.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pai\nfather'),
                  onPressed: (){
                    play('pronunciation_pt_pai.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('papel\npaper'),
                  onPressed: (){
                    play('pronunciation_pt_papel.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('parede\nwall'),
                  onPressed: (){
                    play('pronunciation_pt_parede.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pedra\nstone'),
                  onPressed: (){
                    play('pronunciation_pt_pedra.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pele\nskin'),
                  onPressed: (){
                    play('pronunciation_pt_pele.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('perna\nleg'),
                  onPressed: (){
                    play('pronunciation_pt_perna.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pesado\nheavy'),
                  onPressed: (){
                    play('pronunciation_pt_pesado.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pescoço\nneck'),
                  onPressed: (){
                    play('pronunciation_pt_pescoço.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('peso\nweight'),
                  onPressed: (){
                    play('pronunciation_pt_peso.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pessoa\nperson'),
                  onPressed: (){
                    play('pronunciation_pt_pessoa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('peça\npiece'),
                  onPressed: (){
                    play('pronunciation_pt_peça.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pintura\npaint'),
                  onPressed: (){
                    play('pronunciation_pt_pintura.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('piscina\npool'),
                  onPressed: (){
                    play('pronunciation_pt_piscina.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('plástico\nplastic'),
                  onPressed: (){
                    play('pronunciation_pt_plástico.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pobre\npoor'),
                  onPressed: (){
                    play('pronunciation_pt_pobre.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('polegada\ninch'),
                  onPressed: (){
                    play('pronunciation_pt_polegada.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('polícia\npolice'),
                  onPressed: (){
                    play('pronunciation_pt_polícia.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ponto\ndot'),
                  onPressed: (){
                    play('pronunciation_pt_ponto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('porco\npig'),
                  onPressed: (){
                    play('pronunciation_pt_porco.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('porta\ndoor'),
                  onPressed: (){
                    play('pronunciation_pt_porta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('prata\nsilver'),
                  onPressed: (){
                    play('pronunciation_pt_prata.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('presente\ngift'),
                  onPressed: (){
                    play('pronunciation_pt_presente.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('preço\nprice'),
                  onPressed: (){
                    play('pronunciation_pt_preço.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('prisão\nprison'),
                  onPressed: (){
                    play('pronunciation_pt_prisão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('professor\nteacher'),
                  onPressed: (){
                    play('pronunciation_pt_professor.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('profundo\ndeep'),
                  onPressed: (){
                    play('pronunciation_pt_profundo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('página\npage'),
                  onPressed: (){
                    play('pronunciation_pt_página.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pássaro\nbird'),
                  onPressed: (){
                    play('pronunciation_pt_pássaro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('pão\nbread'),
                  onPressed: (){
                    play('pronunciation_pt_pão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('quadrado\nsquare'),
                  onPressed: (){
                    play('pronunciation_pt_quadrado.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('quarenta\nforty'),
                  onPressed: (){
                    play('pronunciation_pt_quarenta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('quarto\nbedroom'),
                  onPressed: (){
                    play('pronunciation_pt_quarto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('quatorze\nfourteen'),
                  onPressed: (){
                    play('pronunciation_pt_quatorze.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('quatro\nfour'),
                  onPressed: (){
                    play('pronunciation_pt_quatro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('queijo\ncheese'),
                  onPressed: (){
                    play('pronunciation_pt_queijo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('quente\nhot'),
                  onPressed: (){
                    play('pronunciation_pt_quente.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('quieto\nquiet'),
                  onPressed: (){
                    play('pronunciation_pt_quieto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('quilograma\nkilogram'),
                  onPressed: (){
                    play('pronunciation_pt_quilograma.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('quinze\nfifteen'),
                  onPressed: (){
                    play('pronunciation_pt_quinze.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('rainha\nqueen'),
                  onPressed: (){
                    play('pronunciation_pt_rainha.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('raiz\nroot'),
                  onPressed: (){
                    play('pronunciation_pt_raiz.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('raso\nshallow'),
                  onPressed: (){
                    play('pronunciation_pt_raso.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('rato\nmouse'),
                  onPressed: (){
                    play('pronunciation_pt_rato.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('rede\nnetwork'),
                  onPressed: (){
                    play('pronunciation_pt_rede.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('rei\nking'),
                  onPressed: (){
                    play('pronunciation_pt_rei.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('religião\nreligion'),
                  onPressed: (){
                    play('pronunciation_pt_religião.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('relógio\nclock'),
                  onPressed: (){
                    play('pronunciation_pt_relógio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('repórter\nreporter'),
                  onPressed: (){
                    play('pronunciation_pt_repórter.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('restaurante\nrestaurant'),
                  onPressed: (){
                    play('pronunciation_pt_restaurante.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('revista\nmagazine'),
                  onPressed: (){
                    play('pronunciation_pt_revista.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('rico\nrich'),
                  onPressed: (){
                    play('pronunciation_pt_rico.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('rio\nriver'),
                  onPressed: (){
                    play('pronunciation_pt_rio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('roupas\nclothing'),
                  onPressed: (){
                    play('pronunciation_pt_roupas.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('rua\nstreet/road'),
                  onPressed: (){
                    play('pronunciation_pt_rua.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('rádio\nradio'),
                  onPressed: (){
                    play('pronunciation_pt_rádio.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sacerdote\npriest'),
                  onPressed: (){
                    play('pronunciation_pt_sacerdote.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('saia\nskirt'),
                  onPressed: (){
                    play('pronunciation_pt_saia.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sal\nsalt'),
                  onPressed: (){
                    play('pronunciation_pt_sal.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sangue\nblood'),
                  onPressed: (){
                    play('pronunciation_pt_sangue.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('saudável\nhealthy'),
                  onPressed: (){
                    play('pronunciation_pt_saudável.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('seco\ndry'),
                  onPressed: (){
                    play('pronunciation_pt_seco.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('secretário\nsecretary'),
                  onPressed: (){
                    play('pronunciation_pt_secretário.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('seis\nsix'),
                  onPressed: (){
                    play('pronunciation_pt_seis.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('semana\nweek'),
                  onPressed: (){
                    play('pronunciation_pt_semana.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('semente\nseed'),
                  onPressed: (){
                    play('pronunciation_pt_semente.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sessenta\nsixty'),
                  onPressed: (){
                    play('pronunciation_pt_sessenta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('setembro\nSeptember'),
                  onPressed: (){
                    play('pronunciation_pt_setembro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('setenta\nseventy'),
                  onPressed: (){
                    play('pronunciation_pt_setenta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sim\nyes'),
                  onPressed: (){
                    play('pronunciation_pt_sim.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('soldado\nsoldier'),
                  onPressed: (){
                    play('pronunciation_pt_soldado.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('solto\nloose'),
                  onPressed: (){
                    play('pronunciation_pt_solto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('som\nsound'),
                  onPressed: (){
                    play('pronunciation_pt_som.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sopa\nsoup'),
                  onPressed: (){
                    play('pronunciation_pt_sopa.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('suave\nsoft'),
                  onPressed: (){
                    play('pronunciation_pt_suave.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('suco\njuice'),
                  onPressed: (){
                    play('pronunciation_pt_suco.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sujo\ndirty'),
                  onPressed: (){
                    play('pronunciation_pt_sujo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sul\nsouth'),
                  onPressed: (){
                    play('pronunciation_pt_sul.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('surdo\ndeaf'),
                  onPressed: (){
                    play('pronunciation_pt_surdo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('sábado\nSaturday'),
                  onPressed: (){
                    play('pronunciation_pt_sábado.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tarde\nafternoon'),
                  onPressed: (){
                    play('pronunciation_pt_tarde.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('teatro\ntheater'),
                  onPressed: (){
                    play('pronunciation_pt_teatro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tecnologia\ntechnology'),
                  onPressed: (){
                    play('pronunciation_pt_tecnologia.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('tela\nscreen'),
                  onPressed: (){
                    play('pronunciation_pt_tela.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('telefone\nphone'),
                  onPressed: (){
                    play('pronunciation_pt_telefone.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('televisão\ntelevision'),
                  onPressed: (){
                    play('pronunciation_pt_televisão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('temperatura\ntemperature'),
                  onPressed: (){
                    play('pronunciation_pt_temperatura.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('temporada\nseason'),
                  onPressed: (){
                    play('pronunciation_pt_temporada.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('terra\nground'),
                  onPressed: (){
                    play('pronunciation_pt_terra.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('teto\nceiling'),
                  onPressed: (){
                    play('pronunciation_pt_teto.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('topo\ntop'),
                  onPressed: (){
                    play('pronunciation_pt_topo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('trabalho\njob'),
                  onPressed: (){
                    play('pronunciation_pt_trabalho.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('transporte\ntransportation'),
                  onPressed: (){
                    play('pronunciation_pt_transporte.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('trem\ntrain'),
                  onPressed: (){
                    play('pronunciation_pt_trem.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('treze\nthirteen'),
                  onPressed: (){
                    play('pronunciation_pt_treze.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('trinta\nthirty'),
                  onPressed: (){
                    play('pronunciation_pt_trinta.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('triste\nsad'),
                  onPressed: (){
                    play('pronunciation_pt_triste.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('três\nthree'),
                  onPressed: (){
                    play('pronunciation_pt_três.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('universidade\nuniversity'),
                  onPressed: (){
                    play('pronunciation_pt_universidade.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vaca\ncow'),
                  onPressed: (){
                    play('pronunciation_pt_vaca.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vale\nvalley'),
                  onPressed: (){
                    play('pronunciation_pt_vale.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('velozes\nfast'),
                  onPressed: (){
                    play('pronunciation_pt_velozes.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('verbo\nverb'),
                  onPressed: (){
                    play('pronunciation_pt_verbo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('verde\ngreen'),
                  onPressed: (){
                    play('pronunciation_pt_verde.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vermelho\nred'),
                  onPressed: (){
                    play('pronunciation_pt_vermelho.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('verão\nsummer'),
                  onPressed: (){
                    play('pronunciation_pt_verão.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vidro\nglass'),
                  onPressed: (){
                    play('pronunciation_pt_vidro.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vinho\nwine'),
                  onPressed: (){
                    play('pronunciation_pt_vinho.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vinte\ntwenty'),
                  onPressed: (){
                    play('pronunciation_pt_vinte.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vivo\nalive'),
                  onPressed: (){
                    play('pronunciation_pt_vivo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vizinho\nneighbor'),
                  onPressed: (){
                    play('pronunciation_pt_vizinho.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vogal\nvowel'),
                  onPressed: (){
                    play('pronunciation_pt_vogal.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('vítima\nvictim'),
                  onPressed: (){
                    play('pronunciation_pt_vítima.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('zero\nzero'),
                  onPressed: (){
                    play('pronunciation_pt_zero.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('árvore\ntree'),
                  onPressed: (){
                    play('pronunciation_pt_árvore.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('óleo\noil'),
                  onPressed: (){
                    play('pronunciation_pt_óleo.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('ônibus\nbus'),
                  onPressed: (){
                    play('pronunciation_pt_ônibus.mp3');
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
                  child: Text('一\none'),
                  onPressed: (){
                    play('pronunciation_zh_一.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('一世\nI'),
                  onPressed: (){
                    play('pronunciation_zh_一世.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('一月\nJanuary'),
                  onPressed: (){
                    play('pronunciation_zh_一月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('七\nseven'),
                  onPressed: (){
                    play('pronunciation_zh_七.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('七十\nseventy'),
                  onPressed: (){
                    play('pronunciation_zh_七十.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('七月\nJuly'),
                  onPressed: (){
                    play('pronunciation_zh_七月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('丈夫\nhusband'),
                  onPressed: (){
                    play('pronunciation_zh_丈夫.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('三\nthree'),
                  onPressed: (){
                    play('pronunciation_zh_三.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('三十\nthirty'),
                  onPressed: (){
                    play('pronunciation_zh_三十.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('下\ndown'),
                  onPressed: (){
                    play('pronunciation_zh_下.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('下午\nafternoon'),
                  onPressed: (){
                    play('pronunciation_zh_下午.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('不错\nnice'),
                  onPressed: (){
                    play('pronunciation_zh_不错.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('丑陋\nugly'),
                  onPressed: (){
                    play('pronunciation_zh_丑陋.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('世界\nworld'),
                  onPressed: (){
                    play('pronunciation_zh_世界.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('东\neast'),
                  onPressed: (){
                    play('pronunciation_zh_东.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('丰富\nrich'),
                  onPressed: (){
                    play('pronunciation_zh_丰富.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('九\nnine'),
                  onPressed: (){
                    play('pronunciation_zh_九.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('九十\nninety'),
                  onPressed: (){
                    play('pronunciation_zh_九十.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('九月\nSeptember'),
                  onPressed: (){
                    play('pronunciation_zh_九月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('书\nbook'),
                  onPressed: (){
                    play('pronunciation_zh_书.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('二\ntwo'),
                  onPressed: (){
                    play('pronunciation_zh_二.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('二十\ntwenty'),
                  onPressed: (){
                    play('pronunciation_zh_二十.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('二月\nFebruary'),
                  onPressed: (){
                    play('pronunciation_zh_二月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('五\nfive'),
                  onPressed: (){
                    play('pronunciation_zh_五.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('五十\nfifty'),
                  onPressed: (){
                    play('pronunciation_zh_五十.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('人\ncrowd'),
                  onPressed: (){
                    play('pronunciation_zh_人.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('他\nhe'),
                  onPressed: (){
                    play('pronunciation_zh_他.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('他们\nthey'),
                  onPressed: (){
                    play('pronunciation_zh_他们.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('仪表\nmeter'),
                  onPressed: (){
                    play('pronunciation_zh_仪表.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('价钱\nprice'),
                  onPressed: (){
                    play('pronunciation_zh_价钱.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('伤心\nsad'),
                  onPressed: (){
                    play('pronunciation_zh_伤心.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('低\nlow'),
                  onPressed: (){
                    play('pronunciation_zh_低.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('侧\nside'),
                  onPressed: (){
                    play('pronunciation_zh_侧.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('信件\nletter'),
                  onPressed: (){
                    play('pronunciation_zh_信件.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('健康\nhealthy'),
                  onPressed: (){
                    play('pronunciation_zh_健康.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('儿子\nson'),
                  onPressed: (){
                    play('pronunciation_zh_儿子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('儿童\nchild'),
                  onPressed: (){
                    play('pronunciation_zh_儿童.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('元音\nvowel'),
                  onPressed: (){
                    play('pronunciation_zh_元音.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('八十\neighty'),
                  onPressed: (){
                    play('pronunciation_zh_八十.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('八月\nAugust'),
                  onPressed: (){
                    play('pronunciation_zh_八月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('公寓\napartment'),
                  onPressed: (){
                    play('pronunciation_zh_公寓.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('公斤\nkilogram'),
                  onPressed: (){
                    play('pronunciation_zh_公斤.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('六\nsix'),
                  onPressed: (){
                    play('pronunciation_zh_六.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('六十\nsixty'),
                  onPressed: (){
                    play('pronunciation_zh_六十.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('六月\nJune'),
                  onPressed: (){
                    play('pronunciation_zh_六月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('内\ninside'),
                  onPressed: (){
                    play('pronunciation_zh_内.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('军队\narmy'),
                  onPressed: (){
                    play('pronunciation_zh_军队.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('冬季\nwinter'),
                  onPressed: (){
                    play('pronunciation_zh_冬季.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('冰\nice'),
                  onPressed: (){
                    play('pronunciation_zh_冰.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('冷\ncold'),
                  onPressed: (){
                    play('pronunciation_zh_冷.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('刀\nknife'),
                  onPressed: (){
                    play('pronunciation_zh_刀.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('分钟\nminute'),
                  onPressed: (){
                    play('pronunciation_zh_分钟.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('剧院\ntheater'),
                  onPressed: (){
                    play('pronunciation_zh_剧院.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('办公室\noffice'),
                  onPressed: (){
                    play('pronunciation_zh_办公室.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('动物\nanimal'),
                  onPressed: (){
                    play('pronunciation_zh_动物.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('动词\nverb'),
                  onPressed: (){
                    play('pronunciation_zh_动词.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('勺\nspoon'),
                  onPressed: (){
                    play('pronunciation_zh_勺.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('北\nnorth'),
                  onPressed: (){
                    play('pronunciation_zh_北.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('医生\ndoctor'),
                  onPressed: (){
                    play('pronunciation_zh_医生.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('医院\nhospital'),
                  onPressed: (){
                    play('pronunciation_zh_医院.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十\nten'),
                  onPressed: (){
                    play('pronunciation_zh_十.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十一\neleven'),
                  onPressed: (){
                    play('pronunciation_zh_十一.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十一月\nNovember'),
                  onPressed: (){
                    play('pronunciation_zh_十一月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十七\nseventeen'),
                  onPressed: (){
                    play('pronunciation_zh_十七.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十三\nthirteen'),
                  onPressed: (){
                    play('pronunciation_zh_十三.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十九\nnineteen'),
                  onPressed: (){
                    play('pronunciation_zh_十九.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十二\ntwelve'),
                  onPressed: (){
                    play('pronunciation_zh_十二.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十二月\nDecember'),
                  onPressed: (){
                    play('pronunciation_zh_十二月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十五\nfifteen'),
                  onPressed: (){
                    play('pronunciation_zh_十五.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十亿\nbillion'),
                  onPressed: (){
                    play('pronunciation_zh_十亿.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十八\neighteen'),
                  onPressed: (){
                    play('pronunciation_zh_十八.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十六\nsixteen'),
                  onPressed: (){
                    play('pronunciation_zh_十六.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十四\nfourteen'),
                  onPressed: (){
                    play('pronunciation_zh_十四.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('十月\nOctober'),
                  onPressed: (){
                    play('pronunciation_zh_十月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('千\nthousand'),
                  onPressed: (){
                    play('pronunciation_zh_千.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('午餐\nlunch'),
                  onPressed: (){
                    play('pronunciation_zh_午餐.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('半\nhalf'),
                  onPressed: (){
                    play('pronunciation_zh_半.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('南\nsouth'),
                  onPressed: (){
                    play('pronunciation_zh_南.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('卡\ncard'),
                  onPressed: (){
                    play('pronunciation_zh_卡.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('卡车\ntruck'),
                  onPressed: (){
                    play('pronunciation_zh_卡车.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('卧室\nbedroom'),
                  onPressed: (){
                    play('pronunciation_zh_卧室.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('厘米\ncentimeter'),
                  onPressed: (){
                    play('pronunciation_zh_厘米.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('厚\nthick'),
                  onPressed: (){
                    play('pronunciation_zh_厚.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('厨房\nkitchen'),
                  onPressed: (){
                    play('pronunciation_zh_厨房.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('叉子\nfork'),
                  onPressed: (){
                    play('pronunciation_zh_叉子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('发动机\nengine'),
                  onPressed: (){
                    play('pronunciation_zh_发动机.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('受害者\nvictim'),
                  onPressed: (){
                    play('pronunciation_zh_受害者.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('口\nmouth'),
                  onPressed: (){
                    play('pronunciation_zh_口.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('口袋\npocket'),
                  onPressed: (){
                    play('pronunciation_zh_口袋.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('叶\nleaf'),
                  onPressed: (){
                    play('pronunciation_zh_叶.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('向上\nup'),
                  onPressed: (){
                    play('pronunciation_zh_向上.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('听\nhear'),
                  onPressed: (){
                    play('pronunciation_zh_听.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('周\nweek'),
                  onPressed: (){
                    play('pronunciation_zh_周.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('和平\npeace'),
                  onPressed: (){
                    play('pronunciation_zh_和平.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('咖啡\ncoffee'),
                  onPressed: (){
                    play('pronunciation_zh_咖啡.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('哥哥\nbrother'),
                  onPressed: (){
                    play('pronunciation_zh_哥哥.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('唇\nlip'),
                  onPressed: (){
                    play('pronunciation_zh_唇.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('唱\nsing'),
                  onPressed: (){
                    play('pronunciation_zh_唱.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('啤酒\nbeer'),
                  onPressed: (){
                    play('pronunciation_zh_啤酒.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('四\nfour'),
                  onPressed: (){
                    play('pronunciation_zh_四.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('四十\nforty'),
                  onPressed: (){
                    play('pronunciation_zh_四十.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('四月\nApril'),
                  onPressed: (){
                    play('pronunciation_zh_四月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('图书馆\nlibrary'),
                  onPressed: (){
                    play('pronunciation_zh_图书馆.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('图片\nimage'),
                  onPressed: (){
                    play('pronunciation_zh_图片.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('地图\nmap'),
                  onPressed: (){
                    play('pronunciation_zh_地图.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('地板\nfloor'),
                  onPressed: (){
                    play('pronunciation_zh_地板.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('地狱\nhell'),
                  onPressed: (){
                    play('pronunciation_zh_地狱.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('地球\nEarth'),
                  onPressed: (){
                    play('pronunciation_zh_地球.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('地面\nground'),
                  onPressed: (){
                    play('pronunciation_zh_地面.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('坏\nbad'),
                  onPressed: (){
                    play('pronunciation_zh_坏.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('塑料\nplastic'),
                  onPressed: (){
                    play('pronunciation_zh_塑料.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('壁\nwall'),
                  onPressed: (){
                    play('pronunciation_zh_壁.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('士兵\nsoldier'),
                  onPressed: (){
                    play('pronunciation_zh_士兵.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('声音\nsound'),
                  onPressed: (){
                    play('pronunciation_zh_声音.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('夏季\nsummer'),
                  onPressed: (){
                    play('pronunciation_zh_夏季.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('外\noutside'),
                  onPressed: (){
                    play('pronunciation_zh_外.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('大大\nbig/large'),
                  onPressed: (){
                    play('pronunciation_zh_大大.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('大学\nuniversity'),
                  onPressed: (){
                    play('pronunciation_zh_大学.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('天\nday'),
                  onPressed: (){
                    play('pronunciation_zh_天.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('天堂\nheaven'),
                  onPressed: (){
                    play('pronunciation_zh_天堂.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('天空\nsky'),
                  onPressed: (){
                    play('pronunciation_zh_天空.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('天花板\nceiling'),
                  onPressed: (){
                    play('pronunciation_zh_天花板.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('太阳\nsun'),
                  onPressed: (){
                    play('pronunciation_zh_太阳.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('头\nhead'),
                  onPressed: (){
                    play('pronunciation_zh_头.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('头发\nhair'),
                  onPressed: (){
                    play('pronunciation_zh_头发.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('女\nfemale'),
                  onPressed: (){
                    play('pronunciation_zh_女.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('女人\nwoman'),
                  onPressed: (){
                    play('pronunciation_zh_女人.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('女儿\ndaughter'),
                  onPressed: (){
                    play('pronunciation_zh_女儿.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('女孩\ngirl'),
                  onPressed: (){
                    play('pronunciation_zh_女孩.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('女王\nqueen'),
                  onPressed: (){
                    play('pronunciation_zh_女王.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('她\nshe'),
                  onPressed: (){
                    play('pronunciation_zh_她.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('好\ngood'),
                  onPressed: (){
                    play('pronunciation_zh_好.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('妹妹\nsister'),
                  onPressed: (){
                    play('pronunciation_zh_妹妹.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('妻子\nwife'),
                  onPressed: (){
                    play('pronunciation_zh_妻子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('婚姻\nmarriage'),
                  onPressed: (){
                    play('pronunciation_zh_婚姻.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('婚礼\nwedding'),
                  onPressed: (){
                    play('pronunciation_zh_婚礼.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('季节\nseason'),
                  onPressed: (){
                    play('pronunciation_zh_季节.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('学校\nschool'),
                  onPressed: (){
                    play('pronunciation_zh_学校.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('学生\nstudent'),
                  onPressed: (){
                    play('pronunciation_zh_学生.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('它\nit'),
                  onPressed: (){
                    play('pronunciation_zh_它.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('安静\nquiet'),
                  onPressed: (){
                    play('pronunciation_zh_安静.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('宗教\nreligion'),
                  onPressed: (){
                    play('pronunciation_zh_宗教.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('宝宝\nbaby'),
                  onPressed: (){
                    play('pronunciation_zh_宝宝.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('家庭\nfamily'),
                  onPressed: (){
                    play('pronunciation_zh_家庭.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('宽\nwide'),
                  onPressed: (){
                    play('pronunciation_zh_宽.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('小时\nhour'),
                  onPressed: (){
                    play('pronunciation_zh_小时.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('屋\nhouse'),
                  onPressed: (){
                    play('pronunciation_zh_屋.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('屋顶\nroof'),
                  onPressed: (){
                    play('pronunciation_zh_屋顶.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('屏幕\nscreen'),
                  onPressed: (){
                    play('pronunciation_zh_屏幕.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('山\nmountain'),
                  onPressed: (){
                    play('pronunciation_zh_山.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('岛\nisland'),
                  onPressed: (){
                    play('pronunciation_zh_岛.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('工作\njob'),
                  onPressed: (){
                    play('pronunciation_zh_工作.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('工具\ntool'),
                  onPressed: (){
                    play('pronunciation_zh_工具.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('市\ncity'),
                  onPressed: (){
                    play('pronunciation_zh_市.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('市场\nmarket'),
                  onPressed: (){
                    play('pronunciation_zh_市场.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('帽子\nhat'),
                  onPressed: (){
                    play('pronunciation_zh_帽子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('干\nclean'),
                  onPressed: (){
                    play('pronunciation_zh_干.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('干净\nclean'),
                  onPressed: (){
                    play('pronunciation_zh_干净.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('年\nyear'),
                  onPressed: (){
                    play('pronunciation_zh_年.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('年轻\nyoung'),
                  onPressed: (){
                    play('pronunciation_zh_年轻.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('广场\nsquare'),
                  onPressed: (){
                    play('pronunciation_zh_广场.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('床\nbed'),
                  onPressed: (){
                    play('pronunciation_zh_床.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('底部\nbottom'),
                  onPressed: (){
                    play('pronunciation_zh_底部.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('建造\nbuilding'),
                  onPressed: (){
                    play('pronunciation_zh_建造.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('弄脏\nstain'),
                  onPressed: (){
                    play('pronunciation_zh_弄脏.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('弯曲\ncurved'),
                  onPressed: (){
                    play('pronunciation_zh_弯曲.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('弱\nweak'),
                  onPressed: (){
                    play('pronunciation_zh_弱.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('强大\nstrong'),
                  onPressed: (){
                    play('pronunciation_zh_强大.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('形容词\nadjective'),
                  onPressed: (){
                    play('pronunciation_zh_形容词.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('律师\nlawyer'),
                  onPressed: (){
                    play('pronunciation_zh_律师.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('心\nheart'),
                  onPressed: (){
                    play('pronunciation_zh_心.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('快乐\nhappy'),
                  onPressed: (){
                    play('pronunciation_zh_快乐.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('快速\nfast'),
                  onPressed: (){
                    play('pronunciation_zh_快速.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('性\nsex'),
                  onPressed: (){
                    play('pronunciation_zh_性.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('性质\nnature'),
                  onPressed: (){
                    play('pronunciation_zh_性质.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('总线\nbus'),
                  onPressed: (){
                    play('pronunciation_zh_总线.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('慢\nslow'),
                  onPressed: (){
                    play('pronunciation_zh_慢.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('成人\nadult'),
                  onPressed: (){
                    play('pronunciation_zh_成人.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('我们\nwe'),
                  onPressed: (){
                    play('pronunciation_zh_我们.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('战争\nwar'),
                  onPressed: (){
                    play('pronunciation_zh_战争.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('手\nhand'),
                  onPressed: (){
                    play('pronunciation_zh_手.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('手指\nfinger'),
                  onPressed: (){
                    play('pronunciation_zh_手指.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('技术\ntechnology'),
                  onPressed: (){
                    play('pronunciation_zh_技术.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('报纸\nnewspaper'),
                  onPressed: (){
                    play('pronunciation_zh_报纸.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('撕裂\ntear'),
                  onPressed: (){
                    play('pronunciation_zh_撕裂.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('教会\nchurch'),
                  onPressed: (){
                    play('pronunciation_zh_教会.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('数\nnumber'),
                  onPressed: (){
                    play('pronunciation_zh_数.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('新\nnew'),
                  onPressed: (){
                    play('pronunciation_zh_新.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('方向\ndirection'),
                  onPressed: (){
                    play('pronunciation_zh_方向.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('旅馆\nhotel'),
                  onPressed: (){
                    play('pronunciation_zh_旅馆.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('无线电\nradio'),
                  onPressed: (){
                    play('pronunciation_zh_无线电.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('早上\nmorning'),
                  onPressed: (){
                    play('pronunciation_zh_早上.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('早餐\nbreakfast'),
                  onPressed: (){
                    play('pronunciation_zh_早餐.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('时钟\nclock'),
                  onPressed: (){
                    play('pronunciation_zh_时钟.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('昂贵\nexpensive'),
                  onPressed: (){
                    play('pronunciation_zh_昂贵.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('星\nstar'),
                  onPressed: (){
                    play('pronunciation_zh_星.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('星期一\nMonday'),
                  onPressed: (){
                    play('pronunciation_zh_星期一.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('星期三\nWednesday'),
                  onPressed: (){
                    play('pronunciation_zh_星期三.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('星期二\nTuesday'),
                  onPressed: (){
                    play('pronunciation_zh_星期二.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('星期五\nFriday'),
                  onPressed: (){
                    play('pronunciation_zh_星期五.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('星期六\nSaturday'),
                  onPressed: (){
                    play('pronunciation_zh_星期六.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('星期四\nThursday'),
                  onPressed: (){
                    play('pronunciation_zh_星期四.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('星期日\nSunday'),
                  onPressed: (){
                    play('pronunciation_zh_星期日.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('是\nyes'),
                  onPressed: (){
                    play('pronunciation_zh_是.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('晚\nnight'),
                  onPressed: (){
                    play('pronunciation_zh_晚.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('晚餐\ndinner'),
                  onPressed: (){
                    play('pronunciation_zh_晚餐.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('最佳\ntop'),
                  onPressed: (){
                    play('pronunciation_zh_最佳.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('月\nmonth'),
                  onPressed: (){
                    play('pronunciation_zh_月.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('月亮\nmoon'),
                  onPressed: (){
                    play('pronunciation_zh_月亮.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('朋友\nfriend'),
                  onPressed: (){
                    play('pronunciation_zh_朋友.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('服务员\nwaiter'),
                  onPressed: (){
                    play('pronunciation_zh_服务员.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('服装\nclothing'),
                  onPressed: (){
                    play('pronunciation_zh_服装.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('木\nwood'),
                  onPressed: (){
                    play('pronunciation_zh_木.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('杀\nkill'),
                  onPressed: (){
                    play('pronunciation_zh_杀.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('杂志\nmagazine'),
                  onPressed: (){
                    play('pronunciation_zh_杂志.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('材料\nmaterial'),
                  onPressed: (){
                    play('pronunciation_zh_材料.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('杯子\ncup'),
                  onPressed: (){
                    play('pronunciation_zh_杯子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('果汁\njuice'),
                  onPressed: (){
                    play('pronunciation_zh_果汁.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('枪\ngun'),
                  onPressed: (){
                    play('pronunciation_zh_枪.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('柠檬\nlemon'),
                  onPressed: (){
                    play('pronunciation_zh_柠檬.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('树\ntree'),
                  onPressed: (){
                    play('pronunciation_zh_树.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('核\nnuclear'),
                  onPressed: (){
                    play('pronunciation_zh_核.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('根\nroot'),
                  onPressed: (){
                    play('pronunciation_zh_根.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('棕色\nbrown'),
                  onPressed: (){
                    play('pronunciation_zh_棕色.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('森林\nforest'),
                  onPressed: (){
                    play('pronunciation_zh_森林.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('歌曲\nsong'),
                  onPressed: (){
                    play('pronunciation_zh_歌曲.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('死\ndead'),
                  onPressed: (){
                    play('pronunciation_zh_死.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('死亡\ndeath'),
                  onPressed: (){
                    play('pronunciation_zh_死亡.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('母亲\nmother'),
                  onPressed: (){
                    play('pronunciation_zh_母亲.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('汗\nsweat'),
                  onPressed: (){
                    play('pronunciation_zh_汗.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('汤\nsoup'),
                  onPressed: (){
                    play('pronunciation_zh_汤.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('汽油\ngasoline'),
                  onPressed: (){
                    play('pronunciation_zh_汽油.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('汽车\ncar'),
                  onPressed: (){
                    play('pronunciation_zh_汽车.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('没有\nno'),
                  onPressed: (){
                    play('pronunciation_zh_没有.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('河\nriver'),
                  onPressed: (){
                    play('pronunciation_zh_河.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('油\noil'),
                  onPressed: (){
                    play('pronunciation_zh_油.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('法庭\ncourt'),
                  onPressed: (){
                    play('pronunciation_zh_法庭.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('活\nalive'),
                  onPressed: (){
                    play('pronunciation_zh_活.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('浅\nshallow'),
                  onPressed: (){
                    play('pronunciation_zh_浅.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('浴室\nbathroom'),
                  onPressed: (){
                    play('pronunciation_zh_浴室.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('海\nsea'),
                  onPressed: (){
                    play('pronunciation_zh_海.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('海洋\nocean'),
                  onPressed: (){
                    play('pronunciation_zh_海洋.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('海滩\nbeach'),
                  onPressed: (){
                    play('pronunciation_zh_海滩.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('涂料\npaint'),
                  onPressed: (){
                    play('pronunciation_zh_涂料.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('深\ndeep'),
                  onPressed: (){
                    play('pronunciation_zh_深.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('温度\ntemperature'),
                  onPressed: (){
                    play('pronunciation_zh_温度.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('温暖\nwarm'),
                  onPressed: (){
                    play('pronunciation_zh_温暖.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('游戏\ngame'),
                  onPressed: (){
                    play('pronunciation_zh_游戏.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('游行\nMarch'),
                  onPressed: (){
                    play('pronunciation_zh_游行.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('湖\nlake'),
                  onPressed: (){
                    play('pronunciation_zh_湖.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('演员\nactor'),
                  onPressed: (){
                    play('pronunciation_zh_演员.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('火\ntrain'),
                  onPressed: (){
                    play('pronunciation_zh_火.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('灯\nlamp'),
                  onPressed: (){
                    play('pronunciation_zh_灯.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('灰色\ngray'),
                  onPressed: (){
                    play('pronunciation_zh_灰色.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('点\ndot'),
                  onPressed: (){
                    play('pronunciation_zh_点.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('热\nheat'),
                  onPressed: (){
                    play('pronunciation_zh_热.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('照片\nphotograph'),
                  onPressed: (){
                    play('pronunciation_zh_照片.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('父亲\nfather'),
                  onPressed: (){
                    play('pronunciation_zh_父亲.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('片\npiece'),
                  onPressed: (){
                    play('pronunciation_zh_片.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('牛\ncow'),
                  onPressed: (){
                    play('pronunciation_zh_牛.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('牛奶\nmilk'),
                  onPressed: (){
                    play('pronunciation_zh_牛奶.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('牛肉\nbeef'),
                  onPressed: (){
                    play('pronunciation_zh_牛肉.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('牧师\npriest'),
                  onPressed: (){
                    play('pronunciation_zh_牧师.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('狗\ndog'),
                  onPressed: (){
                    play('pronunciation_zh_狗.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('狭窄\nnarrow'),
                  onPressed: (){
                    play('pronunciation_zh_狭窄.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('猪\npig'),
                  onPressed: (){
                    play('pronunciation_zh_猪.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('猪肉\npork'),
                  onPressed: (){
                    play('pronunciation_zh_猪肉.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('猫\ncat'),
                  onPressed: (){
                    play('pronunciation_zh_猫.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('玉米\ncorn'),
                  onPressed: (){
                    play('pronunciation_zh_玉米.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('王\nking'),
                  onPressed: (){
                    play('pronunciation_zh_王.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('环\nring'),
                  onPressed: (){
                    play('pronunciation_zh_环.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('玻璃\nglass'),
                  onPressed: (){
                    play('pronunciation_zh_玻璃.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('球\nball'),
                  onPressed: (){
                    play('pronunciation_zh_球.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('球队\nteam'),
                  onPressed: (){
                    play('pronunciation_zh_球队.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('瓶子\nbottle'),
                  onPressed: (){
                    play('pronunciation_zh_瓶子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('生病\nsick'),
                  onPressed: (){
                    play('pronunciation_zh_生病.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('电子产品\nelectronics'),
                  onPressed: (){
                    play('pronunciation_zh_电子产品.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('电影\nmovie'),
                  onPressed: (){
                    play('pronunciation_zh_电影.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('电脑\ncomputer'),
                  onPressed: (){
                    play('pronunciation_zh_电脑.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('电视\ntelevision'),
                  onPressed: (){
                    play('pronunciation_zh_电视.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('电话\nphone'),
                  onPressed: (){
                    play('pronunciation_zh_电话.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('男\nmale'),
                  onPressed: (){
                    play('pronunciation_zh_男.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('男孩\nboy'),
                  onPressed: (){
                    play('pronunciation_zh_男孩.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('疾病\ndisease'),
                  onPressed: (){
                    play('pronunciation_zh_疾病.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('瘦\nthin'),
                  onPressed: (){
                    play('pronunciation_zh_瘦.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('白色\nwhite'),
                  onPressed: (){
                    play('pronunciation_zh_白色.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('白饭\nrice'),
                  onPressed: (){
                    play('pronunciation_zh_白饭.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('百\nhundred'),
                  onPressed: (){
                    play('pronunciation_zh_百.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('百万\nmillion'),
                  onPressed: (){
                    play('pronunciation_zh_百万.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('皮肤\nskin'),
                  onPressed: (){
                    play('pronunciation_zh_皮肤.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('盐\nsalt'),
                  onPressed: (){
                    play('pronunciation_zh_盐.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('监狱\nprison'),
                  onPressed: (){
                    play('pronunciation_zh_监狱.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('盘子\nplate'),
                  onPressed: (){
                    play('pronunciation_zh_盘子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('直行\nstraight'),
                  onPressed: (){
                    play('pronunciation_zh_直行.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('相机\ncamera'),
                  onPressed: (){
                    play('pronunciation_zh_相机.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('看\nsee'),
                  onPressed: (){
                    play('pronunciation_zh_看.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('短裙\nskirt'),
                  onPressed: (){
                    play('pronunciation_zh_短裙.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('码\nyard'),
                  onPressed: (){
                    play('pronunciation_zh_码.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('砂\nsand'),
                  onPressed: (){
                    play('pronunciation_zh_砂.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('硬\nhard'),
                  onPressed: (){
                    play('pronunciation_zh_硬.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('礼品\ngift'),
                  onPressed: (){
                    play('pronunciation_zh_礼品.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('祖母\ngrandmother'),
                  onPressed: (){
                    play('pronunciation_zh_祖母.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('祖父\ngrandfather'),
                  onPressed: (){
                    play('pronunciation_zh_祖父.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('神\nGod'),
                  onPressed: (){
                    play('pronunciation_zh_神.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('种子\nseed'),
                  onPressed: (){
                    play('pronunciation_zh_种子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('科学\nscience'),
                  onPressed: (){
                    play('pronunciation_zh_科学.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('秘书\nsecretary'),
                  onPressed: (){
                    play('pronunciation_zh_秘书.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('空气\nair'),
                  onPressed: (){
                    play('pronunciation_zh_空气.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('窗口\nwindow'),
                  onPressed: (){
                    play('pronunciation_zh_窗口.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('笔记本电脑\nlaptop'),
                  onPressed: (){
                    play('pronunciation_zh_笔记本电脑.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('第三\nthird'),
                  onPressed: (){
                    play('pronunciation_zh_第三.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('第五\nfifth'),
                  onPressed: (){
                    play('pronunciation_zh_第五.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('第四\nfourth'),
                  onPressed: (){
                    play('pronunciation_zh_第四.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('粉\npink'),
                  onPressed: (){
                    play('pronunciation_zh_粉.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('粘土\nclay'),
                  onPressed: (){
                    play('pronunciation_zh_粘土.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('糖\nsugar'),
                  onPressed: (){
                    play('pronunciation_zh_糖.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('紧\ntight'),
                  onPressed: (){
                    play('pronunciation_zh_紧.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('纸\npaper'),
                  onPressed: (){
                    play('pronunciation_zh_纸.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('经理\nmanager'),
                  onPressed: (){
                    play('pronunciation_zh_经理.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('绿色\ngreen'),
                  onPressed: (){
                    play('pronunciation_zh_绿色.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('网络\nnetwork'),
                  onPressed: (){
                    play('pronunciation_zh_网络.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('美丽\nbeautiful'),
                  onPressed: (){
                    play('pronunciation_zh_美丽.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('美元\ndollar'),
                  onPressed: (){
                    play('pronunciation_zh_美元.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('翅膀\nwing'),
                  onPressed: (){
                    play('pronunciation_zh_翅膀.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('老师\nteacher'),
                  onPressed: (){
                    play('pronunciation_zh_老师.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('耳\near'),
                  onPressed: (){
                    play('pronunciation_zh_耳.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('聋\ndeaf'),
                  onPressed: (){
                    play('pronunciation_zh_聋.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('肥皂\nsoap'),
                  onPressed: (){
                    play('pronunciation_zh_肥皂.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('肩\nshoulder'),
                  onPressed: (){
                    play('pronunciation_zh_肩.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('胡子\nbeard'),
                  onPressed: (){
                    play('pronunciation_zh_胡子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('能源\nenergy'),
                  onPressed: (){
                    play('pronunciation_zh_能源.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('脏\ndirty'),
                  onPressed: (){
                    play('pronunciation_zh_脏.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('脑\nbrain'),
                  onPressed: (){
                    play('pronunciation_zh_脑.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('脚趾\ntoe'),
                  onPressed: (){
                    play('pronunciation_zh_脚趾.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('腿\nleg'),
                  onPressed: (){
                    play('pronunciation_zh_腿.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('膝盖\nknee'),
                  onPressed: (){
                    play('pronunciation_zh_膝盖.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('臂\narm'),
                  onPressed: (){
                    play('pronunciation_zh_臂.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('自行车\nbicycle'),
                  onPressed: (){
                    play('pronunciation_zh_自行车.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('舌\ntongue'),
                  onPressed: (){
                    play('pronunciation_zh_舌.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('舞\ndance'),
                  onPressed: (){
                    play('pronunciation_zh_舞.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('船\nboat'),
                  onPressed: (){
                    play('pronunciation_zh_船.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('艺术\nart'),
                  onPressed: (){
                    play('pronunciation_zh_艺术.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('艺术家\nartist'),
                  onPressed: (){
                    play('pronunciation_zh_艺术家.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('花\nflower'),
                  onPressed: (){
                    play('pronunciation_zh_花.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('花园\ngarden'),
                  onPressed: (){
                    play('pronunciation_zh_花园.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('英寸\ninch'),
                  onPressed: (){
                    play('pronunciation_zh_英寸.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('苹果\napple'),
                  onPressed: (){
                    play('pronunciation_zh_苹果.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('茶\ntea'),
                  onPressed: (){
                    play('pronunciation_zh_茶.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('草\ngrass'),
                  onPressed: (){
                    play('pronunciation_zh_草.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('药物\nmedicine'),
                  onPressed: (){
                    play('pronunciation_zh_药物.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('著名\nfamous'),
                  onPressed: (){
                    play('pronunciation_zh_著名.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('葡萄酒\nwine'),
                  onPressed: (){
                    play('pronunciation_zh_葡萄酒.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('蓝色\nblue'),
                  onPressed: (){
                    play('pronunciation_zh_蓝色.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('蛋糕\ncake'),
                  onPressed: (){
                    play('pronunciation_zh_蛋糕.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('血液\nblood'),
                  onPressed: (){
                    play('pronunciation_zh_血液.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('表\ntable'),
                  onPressed: (){
                    play('pronunciation_zh_表.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('衬衫\nshirt'),
                  onPressed: (){
                    play('pronunciation_zh_衬衫.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('裤子\npants'),
                  onPressed: (){
                    play('pronunciation_zh_裤子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('西方\nwest'),
                  onPressed: (){
                    play('pronunciation_zh_西方.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('警察\npolice'),
                  onPressed: (){
                    play('pronunciation_zh_警察.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('记者\nreporter'),
                  onPressed: (){
                    play('pronunciation_zh_记者.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('谷\nvalley'),
                  onPressed: (){
                    play('pronunciation_zh_谷.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('起司\ncheese'),
                  onPressed: (){
                    play('pronunciation_zh_起司.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('身体\nbody'),
                  onPressed: (){
                    play('pronunciation_zh_身体.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('辅音\nconsonant'),
                  onPressed: (){
                    play('pronunciation_zh_辅音.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('边缘\nedge'),
                  onPressed: (){
                    play('pronunciation_zh_边缘.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('运动\nsport'),
                  onPressed: (){
                    play('pronunciation_zh_运动.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('运输\ntransportation'),
                  onPressed: (){
                    play('pronunciation_zh_运输.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('选举\nelection'),
                  onPressed: (){
                    play('pronunciation_zh_选举.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('邻居\nneighbor'),
                  onPressed: (){
                    play('pronunciation_zh_邻居.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('重\nheavy'),
                  onPressed: (){
                    play('pronunciation_zh_重.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('重量\nweight'),
                  onPressed: (){
                    play('pronunciation_zh_重量.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('金\ngold'),
                  onPressed: (){
                    play('pronunciation_zh_金.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('金属\nmetal'),
                  onPressed: (){
                    play('pronunciation_zh_金属.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('针\nneedle'),
                  onPressed: (){
                    play('pronunciation_zh_针.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('钢笔\npen'),
                  onPressed: (){
                    play('pronunciation_zh_钢笔.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('钱\nmoney'),
                  onPressed: (){
                    play('pronunciation_zh_钱.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('钻石\ndiamond'),
                  onPressed: (){
                    play('pronunciation_zh_钻石.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('铅笔\npencil'),
                  onPressed: (){
                    play('pronunciation_zh_铅笔.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('铜\ncopper'),
                  onPressed: (){
                    play('pronunciation_zh_铜.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('银\nsilver'),
                  onPressed: (){
                    play('pronunciation_zh_银.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('银行\nbank'),
                  onPressed: (){
                    play('pronunciation_zh_银行.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('键\nkey'),
                  onPressed: (){
                    play('pronunciation_zh_键.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('镇\ntown'),
                  onPressed: (){
                    play('pronunciation_zh_镇.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('长\nlong'),
                  onPressed: (){
                    play('pronunciation_zh_长.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('门\ndoor'),
                  onPressed: (){
                    play('pronunciation_zh_门.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('零\nzero'),
                  onPressed: (){
                    play('pronunciation_zh_零.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('面前\nfront'),
                  onPressed: (){
                    play('pronunciation_zh_面前.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('面包\nbread'),
                  onPressed: (){
                    play('pronunciation_zh_面包.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('音乐\nmusic'),
                  onPressed: (){
                    play('pronunciation_zh_音乐.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('页\npage'),
                  onPressed: (){
                    play('pronunciation_zh_页.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('颈部\nneck'),
                  onPressed: (){
                    play('pronunciation_zh_颈部.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('风\nfan'),
                  onPressed: (){
                    play('pronunciation_zh_风.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('飞机场\nairport'),
                  onPressed: (){
                    play('pronunciation_zh_飞机场.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('餐厅\nrestaurant'),
                  onPressed: (){
                    play('pronunciation_zh_餐厅.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('餐饮\nfood'),
                  onPressed: (){
                    play('pronunciation_zh_餐饮.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('饮料\nbeverage'),
                  onPressed: (){
                    play('pronunciation_zh_饮料.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('香蕉\nbanana'),
                  onPressed: (){
                    play('pronunciation_zh_香蕉.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('马\nhorse'),
                  onPressed: (){
                    play('pronunciation_zh_马.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('骨\nbone'),
                  onPressed: (){
                    play('pronunciation_zh_骨.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('高\nhigh'),
                  onPressed: (){
                    play('pronunciation_zh_高.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('鸟\nbird'),
                  onPressed: (){
                    play('pronunciation_zh_鸟.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('鸡\nchicken'),
                  onPressed: (){
                    play('pronunciation_zh_鸡.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('黄色\nyellow'),
                  onPressed: (){
                    play('pronunciation_zh_黄色.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('黑色\nblack'),
                  onPressed: (){
                    play('pronunciation_zh_黑色.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('鼻子\nnose'),
                  onPressed: (){
                    play('pronunciation_zh_鼻子.mp3');
                  },
                ),
                RaisedButton(
                  child: Text('齿\ntooth'),
                  onPressed: (){
                    play('pronunciation_zh_齿.mp3');
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
