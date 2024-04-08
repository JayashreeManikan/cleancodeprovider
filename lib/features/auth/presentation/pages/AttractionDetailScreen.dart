
import 'package:cleancodeprovider/features/auth/domain/models/attraction_detail_entity.dart';
import 'package:cleancodeprovider/features/auth/domain/models/attractions_entity.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../view_models/attractiondetail_view_model.dart';

class AttractionDetailScreen extends StatefulWidget {
  final String id;
final AttractionsEmbeddedAttractionsImages image;
  const AttractionDetailScreen({Key? key, required this.id, required this.image}) : super(key: key);

  @override
  _AttractionDetailScreenState createState() => _AttractionDetailScreenState();
}

class _AttractionDetailScreenState extends State<AttractionDetailScreen> {
  late AttractiondetailViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = Provider.of<AttractiondetailViewModel>(context, listen: false);
    _viewModel.fetchAttractdetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Attraction Detail')),
      body: Consumer<AttractiondetailViewModel>(
        builder: (context, viewmodel, child) {
          if (!viewmodel.loading) {
            AttractionDetailEntity? data = viewmodel.attractionsdetail;
            if (data != null) {
              if (viewmodel.error.isNotEmpty) {
                return Text(viewmodel.error);
              } else {
                return
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 3, // Adjust elevation as needed
                            margin: const EdgeInsets.only(top:20.0,bottom: 20.0), // Adjust margin as needed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(data.name),
                                Text(data.url),
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
                                      height: 200,
                                      width: 200,
                                      child: Image.network(
                                        widget.image.url,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  // Unique tag for every hero animation (The tag must be unique between hero's and same between the two that are going to be provide the hero animation ) .

                                  tag: data.id,
                                  child: SizedBox(
                                    height: 300,
                                    width: 300,
                                    child: Image.network(
                                      widget.image.url,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
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
