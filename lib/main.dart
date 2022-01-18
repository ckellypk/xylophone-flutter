import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//import 'package:audioplayers/audio_cache.dart';
/*
 *
 * This is the starter project. We are adding a few packages to additional
 * functionality. You get packages here: https://pub.dev/packages
 *
 * In this case we are adding the package to play the audio files. The files
 * are already imported for you in the pubspec.yaml.
 *
 * We create each widget to play our xylophone app but it looks like the same
 * widget structure repeated over and over. Next  branch shows how to reduce this
 * repeated code.
 *
  */

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(String soundPlayed){
    final player = AudioCache();
    player.play(soundPlayed);
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
              ),
            ],

          ),
        ),
      ),
    );
  }
}
