
import 'package:cleancodeprovider/features/auth/domain/models/attractions_entity.dart';
import 'package:provider/provider.dart';
//import 'package:cleancodeprovider/features/auth/data/models/events_entity.dart';
//import 'package:cleancodeprovider/features/auth/presentation/providers/events_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../view_models/attraction_view_model.dart';
import 'AttractionDetailScreen.dart';

class AttractionslistScreen extends StatelessWidget {
  const AttractionslistScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Consumer<AttractionViewModel>(
            builder: (context, viewmodel, child) {
              if (!viewmodel.loading) {
                Provider.of<AttractionViewModel>(context, listen: false)
                    .fetchEvent();
                List<AttractionsEmbeddedAttractions> data = viewmodel.attractions.embedded.attractions;
                if (data != null) {
                  if (viewmodel.error.isNotEmpty) {
                    return Text(viewmodel.error);
                  } else if (data.isNotEmpty) {
                    return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          var event = viewmodel.attractions.embedded.attractions[index];
                          return ListTile(
                            onTap:(){
                              Navigator.of(context).push(PageRouteBuilder(
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) =>
                                    SlideTransition(
                                        position: animation.drive(Tween<Offset>(
                                            begin: Offset(1, 0),
                                            end: Offset(0, 0))),
                                        child: child),
                                pageBuilder: (context, animation,
                                    secondaryAnimation) =>
                                    AttractionDetailScreen(id: event.id),
                                transitionDuration: const Duration(seconds: 1),
                                reverseTransitionDuration:
                                const Duration(seconds: 1),
                              ));

                            },
                            leading: Image.network(
                                data[index].images[index].url),
                            title: Text(
                                data[index].name),
                            subtitle: Text(data[index].url),
                          );
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
