import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TravelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: DefaultTabController(
         length: 3, 
         child: Scaffold(
       appBar: AppBar(

          title: Text('My Travel'),
          leading: Icon(FontAwesomeIcons.bars),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(FontAwesomeIcons.shareAlt),
                  SizedBox(
                      width: 8,
                  ),
                  Icon(FontAwesomeIcons.search),
                   SizedBox(
                      width: 8,
                  ),
                  Icon(FontAwesomeIcons.blog)

                ],
              ),
            ),
        
            
          ],
          bottom: TabBar(tabs: [
              Tab(icon: Icon(FontAwesomeIcons.calendar),text: 'Explore'),
              Tab(icon: Icon(FontAwesomeIcons.plane),text: 'Flight'),
              Tab(icon: Icon(FontAwesomeIcons.locationArrow),text: 'Trips',)

          ]),
       ),

        body: TabBarView(children: [
                Icon(FontAwesomeIcons.calendarAlt),
               Icon(FontAwesomeIcons.plane),
               Column(
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(right: 200 , top: 5),
                     child: Text('UPCOMING'),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,top: 25),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Column(
                           children: <Widget>[
                             Text('Sept 9 ,2018',),
                             SizedBox(
                               height: 10,
                             ),
                             Text('SFO', style: TextStyle(fontSize: 50),),
                               SizedBox(
                               height: 10,
                             ),
                             Text('San Fransisco Intl')
                           ],
                         ),
                         SizedBox(
                                  width: 40,
                         ),
                         Icon(FontAwesomeIcons.plane),
                         SizedBox(
                                  width: 40,
                         ),
                          Column(
                           children: <Widget>[
                             SizedBox(
                               height: 10,
                             ),
                             Text('JFK', style: TextStyle(fontSize: 50),),
                               SizedBox(
                               height: 10,
                             ),
                             Text('john F Kennedy intl')
                           ],
                         ),
                       ],
                       
                       
                     ),
                   ),
                     Divider(),
                    Padding(
                     padding: const EdgeInsets.only(left: 10,top: 25),
                     child: Row(
                       children: <Widget>[
                         Column(
                           children: <Widget>[
                             Text('Dec 3 ,2019',),
                             SizedBox(
                               height: 10,
                             ),
                             Text('SFO', style: TextStyle(fontSize: 50),),
                               SizedBox(
                               height: 10,
                             ),
                             Text('San Fransisco Intl')
                           ],
                         ),
                         SizedBox(
                                  width: 40,
                         ),
                         Icon(FontAwesomeIcons.plane),
                         SizedBox(
                                  width: 40,
                         ),
                          Column(
                           children: <Widget>[
                             SizedBox(
                               height: 10,
                             ),
                             Text('SEA', style: TextStyle(fontSize: 50),),
                               SizedBox(
                               height: 10,
                             ),
                             Text('john F Kennedy intl')
                           ],
                         ),
                       ],
                       
                       
                     ),
                   ),
                   Divider(),
                    Padding(
                     padding: const EdgeInsets.only(left: 10,top: 25),
                     child: Row(
                       children: <Widget>[
                         Column(
                           children: <Widget>[
                             Text('Aug 9 ,1918',),
                             SizedBox(
                               height: 10,
                             ),
                             Text('SFO', style: TextStyle(fontSize: 50),),
                               SizedBox(
                               height: 10,
                             ),
                             Text('San Fransisco Intl')
                           ],
                         ),
                         SizedBox(
                                  width: 40,
                         ),
                         Icon(FontAwesomeIcons.plane),
                         SizedBox(
                                  width: 40,
                         ),
                          Column(
                           children: <Widget>[
                             SizedBox(
                               height: 10,
                             ),
                             Text('LCY', style: TextStyle(fontSize: 50),),
                               SizedBox(
                               height: 10,
                             ),
                             Text('Tauyan entry')
                           ],
                         ),
                       ],
                       
                       
                     ),
                   ),
                   Divider()
                 ],
               )


        ])

    )
    ),
    );
    
  }
}