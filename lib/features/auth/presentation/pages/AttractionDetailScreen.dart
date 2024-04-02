
import 'package:cleancodeprovider/features/auth/domain/models/attraction_detail_entity.dart';
import 'package:cleancodeprovider/features/auth/domain/models/attractions_entity.dart';
import 'package:provider/provider.dart';
//import 'package:cleancodeprovider/features/auth/data/models/events_entity.dart';
//import 'package:cleancodeprovider/features/auth/presentation/providers/events_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../view_models/attraction_view_model.dart';

class AttractionDetailScreen extends StatelessWidget {
  const AttractionDetailScreen({super.key, required id});

  @override
  Widget build(BuildContext context) {
    final dynamic argument = ModalRoute.of(context)?.settings.arguments;
    late String id = argument.toString();

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Consumer<AttractionViewModel>(
            builder: (context, viewmodel, child) {
              if (!viewmodel.loading) {
                Provider.of<AttractionViewModel>(context, listen: false)
                    .fetchAttractdetail(id);
                AttractionDetailEntity data = viewmodel.attractionsdetail;
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Hero(
                            flightShuttleBuilder: (flightContext, animation, flightDirection,
                                fromHeroContext, toHeroContext) {
                              Widget fromHero = fromHeroContext.widget;

                              return RotationTransition(turns: animation, child: fromHero);
                            },
                            // Whether to perform the transition or hero animation on back button or by slide the screen (gesture) for go back to previous screen .
                            //
                            transitionOnUserGestures: true,

                            // placeholderBuilder is used to place a widget at the location of the widget or the images on which the hero animation is performing .
                            //
                            placeholderBuilder: (context, heroSize, child) => Opacity(
                              opacity: 0.1,
                              child: SizedBox(
                                height: 500,
                                width: 500,
                                child: Image.network(
                                  data.name,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            // Unique tag for every hero animation (The tag must be unique between hero's and same between the two that are going to be provide the hero animation ) .

                            tag: data.id,
                            child: SizedBox(
                              height: 500,
                              width: 400,
                              child: Image.network(
                                data.name,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            data.url,
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            data.name,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  }
              return Container();
              }

        )
    );
  }
}
