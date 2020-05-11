import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:weekend/views/dotify_page.dart';
import 'package:weekend/views/travel_page.dart';

class HomePage extends StatelessWidget {
 final GlobalKey<ScaffoldState> bars = GlobalKey<ScaffoldState>();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      key: bars,
      appBar: AppBar( 
        leading: IconButton(icon: Icon(FontAwesomeIcons.bars),
         onPressed: (){
            bars.currentState.openDrawer();
         }),
      ),
      drawer: Drawer(
        
        child: ListView(
                      
              children: <Widget>[ 
          
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: DrawerHeader(child: Text('Drey',style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold,fontSize: 25),)),
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[ 
                      Icon(FontAwesomeIcons.plane),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Travel', style: TextStyle(fontSize: 20),),
                      ),
                    ],
                  ),
                  onTap: (){
              Navigator.push(
                              context,
                 MaterialPageRoute(
                   builder: (BuildContext context) =>
                    TravelPage()));                   },

                ),
                ListTile(
                  title: Row(
                    children: <Widget>[ 
                      Icon(FontAwesomeIcons.userAlt),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Profile', style: TextStyle(fontSize: 20),),
                      ),
                    ],
                  ),
                  onTap: (){
              Navigator.push(
                              context,
                 MaterialPageRoute(
                   builder: (BuildContext context) =>
                    TravelPage()));                   },

                ),
                ListTile(
                  title: Row(
                    children: <Widget>[ 
                      Icon(FontAwesomeIcons.music),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Dotify', style: TextStyle(fontSize: 20),),
                      ),
                    ],
                  ),
                  onTap: (){
              Navigator.push(
                              context,
                 MaterialPageRoute(
                   builder: (BuildContext context) =>
                    DotifyPage()));                   },

                ),
              ],
        ) ,
      ),

        body: SingleChildScrollView(
          
            
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Title(color: Colors.blueGrey, child: Text('Team',style: TextStyle(fontSize: 40,color: Colors.brown))),
                    Padding(
                      padding:  EdgeInsets.only(top: 10),
                      child: Text('please fill in all details',style: TextStyle(fontWeight: FontWeight.w300),),
                    ),
                       Padding(
                         padding: const EdgeInsets.only(top: 15,left:30, right: 15),
                         child: TextFormField(
                           textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            fillColor: Colors.white38,
                            filled: true,
                            prefixIcon: Icon(Icons.add_call),
                            labelText: "E-mail or Phone-no"

                          ),
                      ),
                    
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 15,left: 30, right: 15),
                         child: TextFormField(
                           textAlign: TextAlign.start,
                           decoration: InputDecoration(
                             fillColor: Colors.white38,
                             filled: true,
                             suffixIcon: Icon(Icons.access_alarm),
                             labelText: 'password',
                             focusColor: Colors.red
                             

                           ),


                         ),
                       ),
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Text('Forgot password?',style: TextStyle(color: Colors.blue),),
                            ),

                            FlatButton(
                              
                              color: Colors.blue,
                              textColor: Colors.purple,
                              onPressed: () {
                                   
                              }, 
                              child: Padding(
                                padding: const EdgeInsets.only(left:20, right: 20),
                                child: Text('Sign In',style: TextStyle(fontSize: 20),),
                                
                              ),
                              ),
                            
                  ],
                ),
              ),
            ),
          

        ),
    
    
    );
  }
}