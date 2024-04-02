import 'package:flutter/cupertino.dart';
import '../../domain/models/attraction_detail_entity.dart';
import '../../domain/models/attractions_entity.dart';
import '../../data/data_source/attraction_api_services.dart';

class AttractionViewModel extends ChangeNotifier {
  final AttractionApiServices _apiServices = AttractionApiServices();

  late AttractionsEntity _attractions = AttractionsEntity();
  late AttractionDetailEntity _attractionsdetail = AttractionDetailEntity();
  bool _loading = false;
  bool _firstTimeLoading = true;
  String _error = '';


  bool get loading => _loading;

  String get error => _error;

  AttractionsEntity get attractions => _attractions;
  AttractionDetailEntity get attractionsdetail => _attractionsdetail;

  Future<void> fetchEvent() async {
    try {
      _loading = true;
      //notifyListeners();
      AttractionsEntity fetchedAttractions = await _apiServices.getAttractions();
      _loading = false;

      // Check if the fetched events are different from the current events

      // Compare oldEvents and newEvents
      bool hasChanges = false;
      int? oldAttractionsLength = _attractions.embedded.attractions.length;
      int? newAttractionsLength = fetchedAttractions.embedded.attractions
          .length;

      if (oldAttractionsLength !=
          newAttractionsLength) {
        hasChanges = true;
      } else {
        // Iterate over both lists and compare each Event
        for (int i = 0; i < oldAttractionsLength; i++) {
          if (_attractions.embedded.attractions[i].name !=
              fetchedAttractions.embedded.attractions[i].name) {
            hasChanges = true;
            break;
          }
        }
      }
      print('State Has Changed ? : $hasChanges');

      if (hasChanges || _firstTimeLoading) {
        _attractions = fetchedAttractions;
        _firstTimeLoading = false;
        notifyListeners(); // Notify listeners only when the state has changed
      }
    } catch (e) {
      _loading = false;
      _error = e.toString();
      //notifyListeners();
    }
  }

  Future<void> fetchAttractdetail(String id) async {
    try {
      _loading = true;
      //notifyListeners();
      AttractionDetailEntity fetchedAttractiondetail = await _apiServices.getAttractionsDetail('id');
      _loading = false;
      _attractionsdetail=fetchedAttractiondetail;
      _firstTimeLoading = false;
      notifyListeners();

    } catch (e) {
      _loading = false;
      _error = e.toString();
      //notifyListeners();
    }
  }

}
