import 'package:flutter/material.dart';
import 'package:weekend/model/music_model.dart';

class MusicCard extends StatelessWidget {
  final Music musics;

  const MusicCard({Key key,@required this.musics}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, ),
        child: Container(
          color: Colors.white,
          height: 150,
          width: 150,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    // color: Colors.blue,
                    height: 130,
                    child: Image.asset(
                      musics.cover,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(45.0),
                      child: Text(
                        musics.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  // Text('Hits',style: TextStyle(color: Colors.white,fontSize: 30),),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Text(
                  musics.subtitle,
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
