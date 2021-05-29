import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void clickSound(int noteSound){
    final audioPlayer = AudioCache();
    audioPlayer.play("assets_note$noteSound.wav");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          centerTitle: true,
          title: Text("Xylophone",
            style: TextStyle(
              color: Colors.black,
            ),),
          leading: Icon(  Icons.audiotrack,
          size: 24,
          color: Colors.black87,),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/wood.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150,right: 150,top: 50),
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      clickSound(1);
                    },

                    child: Icon(Icons.album,color: Colors.black45,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130,right: 130,top: 10),
                  child: FlatButton(
                    color: Colors.pinkAccent,
                    onPressed: () {
                      clickSound(2);
                    },
                    child: Icon(Icons.album,color: Colors.black45,),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 100,right: 100,top: 10),
                  child: FlatButton(
                    color: Colors.yellowAccent,
                    onPressed: () {
                      clickSound(3);
                    },
                    child: Icon(Icons.album,color: Colors.black45,),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 80,right: 80,top: 10),
                  child: FlatButton(
                    color: Colors.lightGreenAccent,
                    onPressed: () {
                      clickSound(4);
                    },
                    child: Icon(Icons.album,color: Colors.black45,),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 60,right: 60,top: 10),
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      clickSound(5);
                    },
                    child: Icon(Icons.album,color: Colors.black45,),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40,top: 10),
                  child: FlatButton(
                    color: Colors.greenAccent,
                    onPressed: () {
                      clickSound(6);
                    },


                    child: Icon(Icons.album,color: Colors.black45,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: FlatButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      clickSound(7);
                    },
                    child: Icon(Icons.album,color: Colors.black45,),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: FlatButton(
                    color: Colors.purple,
                    onPressed: () {
                      clickSound(8);
                    },
                    child: Icon(Icons.album,color: Colors.black45,),
                  ),
                ),

                //For Text
                Padding(
                  padding:
                  const EdgeInsets.only(left: 80.0, bottom: 20.0, top: 40.0),
                  child: Row(
                    children: [
                      Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.black45,
                          elevation: 10,
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text(
                                "Touch the dot to play and \n enjoy the music!",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                )
              ],

            ),)
          ),
      ),
    );
  }
}
