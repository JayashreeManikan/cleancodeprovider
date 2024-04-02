import 'package:flutter/cupertino.dart';

import '../../data/data_source/venues_api_services.dart';
import '../../domain/models/events_entity.dart';
import '../../domain/models/venues_entity.dart';

class VenueViewModel extends ChangeNotifier {
  final VenuesApiServices _apiServices = VenuesApiServices();

  late VenuesEntity _venues=VenuesEntity();
  bool _loading = false;
  bool _firstTimeLoading = true;
  String _error = '';


  bool get loading => _loading;
  String get error => _error;
  VenuesEntity get venues => _venues;

  // List<EventsEntity> _events = [];
  // List<EventsEntity> get events => _events;

  Future<void> fetchVenues() async {
    try {
      _loading = true;
      //notifyListeners();
      // _events = (await _apiServices.getEvents());
      VenuesEntity fetchedVenues =  (await _apiServices.getVenues());
      _loading = false;
      // Check if the fetched events are different from the current events

      // Compare oldEvents and newEvents
      bool hasChanges = false;
      int? oldVenuesLength = _venues.embedded.venues.length;
      int? newVenuesLength = fetchedVenues.embedded.venues.length;
      if (oldVenuesLength != null && newVenuesLength != null) {
        if (oldVenuesLength != newVenuesLength) {
          hasChanges = true;
        } else {
          // Iterate over both lists and compare each Event
          for (int i = 0; i < oldVenuesLength; i++) {
            if (_venues.embedded.venues[i].name != fetchedVenues.embedded.venues[i].name) {
              hasChanges = true;
              break;
            }
          }
        }
      }
      print('State Has Changed ? : $hasChanges');

      if(hasChanges || _firstTimeLoading) {
        _venues = fetchedVenues;
        _firstTimeLoading = false;
        notifyListeners(); // Notify listeners only when the state has changed
      }
    } catch (e) {
      _loading = false;
      _error = e.toString();
      //notifyListeners();
    }
  }

// Future<List<Event>> _fetchEventsFromAPI() async {
//   // Fetch events from the API
// }
}