import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weekend/card/music_card.dart';
import 'package:weekend/model/music_model.dart';


class DotifyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: <Widget>[
           SliverList(
             delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                  Icon(FontAwesomeIcons.bars),
                  Image.asset('assets/icon/dotify_icon.png'),
                  Icon(FontAwesomeIcons.search)
              ],
            ),
            
                ),
                Center(child: Text('Browse', style: TextStyle(fontSize: 25),))
             ]),
             
             ),
            SliverToBoxAdapter(
              child:  Container(
                height: 180,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext  context, int index){
                  return MusicCard(musics: musics[index]);
                },itemCount: musics.length,),
              ),
              
              ),
           SliverList(
             delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left:10),
                    child: Text('FETURED ALBUM' , style: TextStyle(fontSize: 15),),
                  ),
                  Divider()
             ])),
             SliverList(delegate: 
             SliverChildListDelegate([
               ListTile(
                 leading: Image.asset('assets/image/1.png'),
                 title: Text('Variable Music'),
                 subtitle: Text('swifthead killer'),
                 trailing: Image.asset('assets/icon/view_album_btn.png'),
               ),
               Divider(),
               Padding(
                 padding: const EdgeInsets.only(left: 5),
                 child: Text('GENRES & MOOD'),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   child: Stack(
                     children: <Widget>[
                       Container(
                         height: 1,
                         width: 300,
                         color: Colors.black12,
                        
                       ),
                        Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: Container(
                             height: 3,
                             width: 40,
                             decoration: BoxDecoration(
                             color: Colors.deepOrange,
                             borderRadius: BorderRadius.all(Radius.circular(4)),
                           ),
                        )),
                     ],
                   ),
                 ),
               )
             ])
             ),
             SliverToBoxAdapter(
              child: Container(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                  return MusicCard(musics: musics[index]);
                },
                itemCount: musics.length,
                ),
              ),),
           
          ]
      ),
    );
  }
}