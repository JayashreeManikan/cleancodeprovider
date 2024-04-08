import 'package:flutter/cupertino.dart';
import '../../data/Respository/AttractionRespository.dart';
import '../../domain/models/attractions_entity.dart';


class AttractionViewModel extends ChangeNotifier {
  final AttractionRepository _attractionRepository = AttractionRepository();

  late AttractionsEntity _attractions = AttractionsEntity();

  bool _loading = false;
  bool _firstTimeLoading = true;
  String _error = '';


  bool get loading => _loading;

  String get error => _error;

  AttractionsEntity get attractions => _attractions;


  Future<void> fetchEvent() async {
    try {
      _loading = true;
      //notifyListeners();
      AttractionsEntity fetchedAttractions = await _attractionRepository.getAttractionlist();
      _loading = false;

      // Check if the fetched events are different from the current events

      // Compare oldEvents and newEvents
      bool hasChanges = false;
      int? oldAttractionsLength = _attractions.embedded.attractions.length;
      int? newAttractionsLength = fetchedAttractions.embedded.attractions.length;

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



}
