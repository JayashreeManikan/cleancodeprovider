
import 'package:cleancodeprovider/features/auth/domain/models/attractions_entity.dart';
import 'package:provider/provider.dart';
//import 'package:cleancodeprovider/features/auth/data/models/events_entity.dart';
//import 'package:cleancodeprovider/features/auth/presentation/providers/events_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../domain/models/attraction_detail_entity.dart';
import '../view_models/attraction_view_model.dart';
import 'AttractionDetailScreen.dart';

class AttractionslistScreen extends StatelessWidget {
  const AttractionslistScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:Text('Attractions',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),backgroundColor: Colors.blue,
        ),
        body: Consumer<AttractionViewModel>(
            builder: (context, viewmodel, child) {
              if (!viewmodel.loading) {
                Provider.of<AttractionViewModel>(context, listen: false)
                    .fetchEvent();
                final data = viewmodel.attractions.embedded.attractions;
                if (data != null) {
                  if (viewmodel.error.isNotEmpty) {
                    return Text(viewmodel.error);
                  } else if (data.isNotEmpty) {
                    return ListView.builder(

                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          if (index >= 0 && index < data.length) {
                            final event = data[index];

                            return Card(
                              elevation: 3, // Adjust elevation as needed
                              margin: EdgeInsets.all(8), // Adjust margin as needed
                              child: ListTile(
                                onTap: () {
                                  print('Printing1 the event id:${event.id}');

                                  Navigator.of(context).push(PageRouteBuilder(
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) =>
                                        SlideTransition(
                                            position: animation.drive(
                                                Tween<Offset>(
                                                    begin: Offset(1, 0),
                                                    end: Offset(0, 0))),
                                            child: child),
                                    pageBuilder: (context, animation,
                                        secondaryAnimation) =>
                                        AttractionDetailScreen(id: event.id,image:event.images.first),
                                    transitionDuration: const Duration(
                                        seconds: 1),
                                    reverseTransitionDuration:
                                    const Duration(seconds: 1),
                                  ));
                                },
                                leading: Hero(
                                  tag:data[index].id,
                                  child: Image.network(
                                      data[index].images[0].url,width: 100, // specify the width
                                      height: 100, // specify the height
                                      fit: BoxFit.cover),
                                ),
                                title: Text(
                                    event.name),
                                subtitle: Text(event.url),
                              ),
                            );
                          }
                          return null;
                        }
                    );
                  }
                }
              }
              return Container();
            }
        )
    );
  }
}
