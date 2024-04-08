
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AttractionslistScreen.dart';
import 'EventslistScreen.dart';
import 'VenueslistScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(color:Colors.white,fontStyle: FontStyle.italic,fontSize: 40, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
   SizedBox(
     width: 500,height: 300,
     child: Container(
       child: AnimatedTextKit(totalRepeatCount:100,
         animatedTexts: [
          RotateAnimatedText('WELCOME',textStyle: optionStyle,duration:Duration(milliseconds: 1000) ),
           RotateAnimatedText('TO',textStyle: optionStyle,duration:Duration(milliseconds: 1000)),
           RotateAnimatedText('TICKETMASTER',textStyle: optionStyle,duration:Duration(milliseconds: 1000)),
         ],
        ),
     ),
   ),
    const Text(
      'Attractions',
      style: optionStyle,
    ),
    const Text(
      ' Venues',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,

      appBar: AppBar(title:Text(widget.title),),
      body: Center(

        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Events'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const EventslistScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('Attractions'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AttractionslistScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('Venues'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VenueslistScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

