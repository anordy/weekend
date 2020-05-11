import 'package:flutter/cupertino.dart';

class Music {
  final String cover;
  final String title;
  final String subtitle;

    Music( {@required this.cover,@required this.title,@required this.subtitle});
  
}

List <Music> musics = <Music> [
  Music(cover: 'assets/image/20.png', subtitle: 'Todays Songs Hits', title: 'TOP',),
  Music(cover: 'assets/image/1.png', subtitle: 'Todays Songs Hits', title: 'TOP',),
  Music(cover: 'assets/image/5.png', subtitle: 'Todays Songs Hits', title: 'TOP',),
  Music(cover: 'assets/image/20.png', subtitle: 'Todays Songs Hits', title: 'TOP',),
  Music(cover: 'assets/image/20.png', subtitle: 'Todays Songs Hits', title: 'TOP',),
];