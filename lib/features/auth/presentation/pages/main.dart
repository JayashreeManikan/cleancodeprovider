
import 'dart:async';

import 'package:cleancodeprovider/features/auth/presentation/pages/EventslistScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../locator/injector.dart';
import '../view_models/Venue_view_model.dart';
import '../view_models/attraction_view_model.dart';
import '../view_models/attractiondetail_view_model.dart';
import '../view_models/events_view_model.dart';
import 'AttractionslistScreen.dart';
import 'TicketMasterHome.dart';
import 'VenueslistScreen.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setuplocator();
runApp(
    const MyApp(
)
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Ticketmaster';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> EventViewModel()),
      ChangeNotifierProvider(create: (_)=> AttractionViewModel()),
      ChangeNotifierProvider(create: (_)=> VenueViewModel()),
      ChangeNotifierProvider(create: (_)=>AttractiondetailViewModel()),
    ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,

        title: appTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MySplashScreen(),
      ),
    );
  }
}

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    MyHomePage(title: 'Home Page',),
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.white,
        child:Image.network("https://imgcache.dealmoon.com/thumbimg.dealmoon.com/dealmoon/9c7/d3e/b5d/844438ccb1907c11717a367.jpg_1000_560_13_1355.jpg"),
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
