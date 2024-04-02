
import 'package:cleancodeprovider/features/auth/domain/models/events_entity.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view_models/events_view_model.dart';

class EventslistScreen extends StatelessWidget {
  const EventslistScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Consumer<EventViewModel>(
            builder: (context, viewmodel, child) {
              if (!viewmodel.loading) {
                Provider.of<EventViewModel>(context, listen: false)
                    .fetchEvent();
                List<EventsEmbeddedEvents> data = viewmodel.events.embedded.events;
                if(data != null) {
                  if (viewmodel.error.isNotEmpty) {
                    return Text(viewmodel.error);
                  } else if (data.isNotEmpty) {
                    return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading:Image.network(data[index].images[index].url),
                            title: Text(
                                data[index].name),
                            subtitle: Text(data[index].url),
                          );
                        }

                    );
                  }
                }
              };
              return Container();
            }
        )
    );
  }
}
