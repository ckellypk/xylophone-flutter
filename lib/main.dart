import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//import 'package:audioplayers/audio_cache.dart';
/*
 *
 * Now that we have the app functioning lets refactor to use a function to
 * return our individual widgets.
 *
 * We create the function build key to return our individual keys. Notice how
 * the parameters are named and we can pass in the specific class member when
 * setting widget properties
 *
 *
  */

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(String soundPlayed){
    final player = AudioCache();
    player.play(soundPlayed);
  }

  Expanded buildKey({String soundFile, Color colorPicked}){
    return Expanded(
      child: TextButton(
          onPressed: () {
            playSound(soundFile);
          },
          child: Text(''),
          style: TextButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero)
              ),
              backgroundColor: colorPicked
          )
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundFile: 'note1.wav', colorPicked: Colors.red),
              buildKey(soundFile: 'note2.wav', colorPicked: Colors.orange),
              buildKey(soundFile: 'note3.wav', colorPicked: Colors.yellow),
              buildKey(soundFile: 'note4.wav', colorPicked: Colors.green),
              buildKey(soundFile: 'note5.wav', colorPicked: Colors.teal),
              buildKey(soundFile: 'note6.wav', colorPicked: Colors.blue),
              buildKey(soundFile: 'note7.wav', colorPicked: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}



/*
Expanded(
child: TextButton(
onPressed: () {
playSound('note1.wav');
},
child: Text(''),
style: TextButton.styleFrom(
shape: const RoundedRectangleBorder(
borderRadius: BorderRadius.all(Radius.zero)
),
backgroundColor: Colors.red
)
),
),
Expanded(
child: TextButton(
onPressed: () {
playSound('note2.wav');
},
child: Text(''),
style: TextButton.styleFrom(
shape: const RoundedRectangleBorder(
borderRadius: BorderRadius.all(Radius.zero)
),
backgroundColor: Colors.orange
)
),
),
Expanded(
child: TextButton(
onPressed: () {
playSound('note3.wav');
},
child: Text(''),
style: TextButton.styleFrom(
shape: const RoundedRectangleBorder(
borderRadius: BorderRadius.all(Radius.zero)
),
backgroundColor: Colors.yellow
)
),
),
Expanded(
child: TextButton(
onPressed: () {
playSound('note4.wav');
},
child: Text(''),
style: TextButton.styleFrom(
shape: const RoundedRectangleBorder(
borderRadius: BorderRadius.all(Radius.zero)
),
backgroundColor: Colors.green
)
),
),
Expanded(
child: TextButton(
onPressed: () {
playSound('note5.wav');
},
child: Text(''),
style: TextButton.styleFrom(
shape: const RoundedRectangleBorder(
borderRadius: BorderRadius.all(Radius.zero)
),
backgroundColor: Colors.teal
)
),
),
Expanded(
child: TextButton(
onPressed: () {
playSound('note6.wav');
},
child: Text(''),
style: TextButton.styleFrom(
shape: const RoundedRectangleBorder(
borderRadius: BorderRadius.all(Radius.zero)
),
backgroundColor: Colors.blue
)
),
),
Expanded(
child: TextButton(
onPressed: () {
playSound('note7.wav');
},
child: Text(''),
style: TextButton.styleFrom(
shape: const RoundedRectangleBorder(
borderRadius: BorderRadius.all(Radius.zero)
),
backgroundColor: Colors.purple
)
),
),*/
