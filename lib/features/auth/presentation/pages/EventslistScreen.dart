
import 'package:cleancodeprovider/features/auth/domain/models/events_entity.dart';
import 'package:cleancodeprovider/features/auth/presentation/view_models/attractiondetail_view_model.dart';
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
        appBar: AppBar(
          title: Text('Events',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),backgroundColor: Colors.blue,
        ),
        body: Consumer<EventViewModel>(
            builder: (context, viewmodel, child) {
              if (!viewmodel.loading) {
                Provider.of<EventViewModel>(context, listen: false)
                    .fetchEvent();
                //List<EventsEmbeddedEvents> data = viewmodel.events.embedded.events;
                if (viewmodel != null) {
                  if (viewmodel.error.isNotEmpty) {
                    return Text(viewmodel.error);
                  } else  {
                    return
                      Card(
                        elevation: 3, // Adjust elevation as needed
                        margin: EdgeInsets.all(8), // Adjust margin as needed
                        child: Column(
                            children: [
                              TextField(
                                onChanged: (value){
                                  viewmodel.search(value);
                                  },
                                decoration: InputDecoration(
                                hintText: 'Search',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                  suffixIcon: const Icon(Icons.search),
                              ),
                              ),
                          Expanded(
                            child: Consumer(builder:(context,EventViewModel events,child)=>ListView.builder(
                              itemCount: events.searchedEvents.embedded.events.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: Card(
                                    borderOnForeground:true ,color: Colors.blueGrey,
                                    child: Image.network(events.searchedEvents.embedded.events[index].images[0].url,
                                    height:100,width: 100,
                                        fit: BoxFit.cover),),
                                  title: Text(
                                      events.searchedEvents.embedded.events[index].name),
                                  subtitle: Text(events.searchedEvents.embedded.events[index].url),
                                );
                              }
                          ),
                          ),
                          )
                            ],
                          ),
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
