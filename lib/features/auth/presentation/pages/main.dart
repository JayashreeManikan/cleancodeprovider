
import 'package:cleancodeprovider/features/auth/presentation/pages/EventslistScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/Venue_view_model.dart';
import '../view_models/attraction_view_model.dart';
import '../view_models/events_view_model.dart';
import 'AttractionslistScreen.dart';
import 'VenueslistScreen.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Ticketmaster Discovery';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> EventViewModel()),
      ChangeNotifierProvider(create: (_)=> AttractionViewModel()),
      ChangeNotifierProvider(create: (_)=> VenueViewModel()),
    ],
      child: MaterialApp(
        title: appTitle,
        home: MyHomePage(title: appTitle),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'HAPPY TO DISCOVER',
      style: optionStyle,
    ),
    Text(
       'Attractions',
      style: optionStyle,
    ),
    Text(
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
      appBar: AppBar(title: Text(widget.title)),
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
              child: Text('TicketingMaster'),
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




// import 'package:cleancodeprovider/features/auth/presentation/pages/EventslistScreen.dart';
// //import 'package:cleancodeprovider/features/auth/presentation/providers/events_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'features/auth/presentation/view_models/events_view_model.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(providers: [
//       ChangeNotifierProvider(create: (_)=> EventViewModel())],
//       child: MaterialApp(
//         title: 'MVVM',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//           brightness: Brightness.light,
//           visualDensity: VisualDensity.adaptivePlatformDensity
//         ),
//         home: const EventslistScreen(),
//       ),
//     );
//   }
// }
