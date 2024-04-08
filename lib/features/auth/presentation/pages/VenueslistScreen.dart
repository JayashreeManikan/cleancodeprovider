import 'package:cleancodeprovider/features/auth/domain/models/venues_entity.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view_models/Venue_view_model.dart';

class VenueslistScreen extends StatelessWidget {
  const VenueslistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Venues',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Consumer<VenueViewModel>(builder: (context, viewmodel, child) {
          if (!viewmodel.loading) {
            Provider.of<VenueViewModel>(context, listen: false).fetchVenues();
            final data = viewmodel.venues.embedded.venues;

            if (data != null) {
              if (viewmodel.error.isNotEmpty) {
                return Text(viewmodel.error);
              } else if (data.isNotEmpty) {
                return Card(
                  borderOnForeground:true ,color: Colors.white,
                  child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        Widget widget;
                        if(data[index].images?.isNotEmpty==true){
                          widget = Image.network(data[index].images?[0].url??'',width: 100, // specify the width
                              height: 100, // specify the height
                              fit: BoxFit.cover);
                         }else{
                          widget = Image.network('https://t4.ftcdn.net/jpg/04/78/96/89/360_F_478968971_GvhV0WxLTnTkQpuK0BUGzUlpHpCpbBox.jpg',width: 100, // specify the width
                              height: 100, // specify the height
                              fit: BoxFit.cover);
                        }
                          return ListTile(
                            leading: widget,
                            title: Text(data[index].name),
                            subtitle: Text(data[index].url),
                          );
                  
                  
                  
                      }),
                );
              }
            }
          }
          ;
          return Container();
        }));
  }
}
