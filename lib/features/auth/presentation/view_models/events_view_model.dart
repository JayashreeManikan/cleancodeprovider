import 'package:flutter/cupertino.dart';

import '../../../../core/network/api_status.dart';
import '../../data/data_source/api_services.dart';

import '../../domain/models/events_entity.dart';

class EventViewModel extends ChangeNotifier {

  final ApiServices _apiServices = ApiServices();

  late EventsEntity _events=EventsEntity();
  bool _loading = false;
  bool _firstTimeLoading = true;
  String _error = '';



  bool get loading => _loading;

  String get error => _error;

  EventsEntity get events => _events;

  Future<void> fetchEvent() async {
    try {
      _loading = true;
      //notifyListeners();
       EventsEntity fetchedEvents = (await _apiServices.getEvents());

      _loading = false;

      // Check if the fetched events are different from the current events
      // Compare oldEvents and newEvents
      bool hasChanges = false;

      int? oldEventsLength = _events.embedded.events.length;
      int? newEventsLength=fetchedEvents.embedded.events.length;

      if (oldEventsLength!= null &&
          (newEventsLength!= null)) {

        if (oldEventsLength !=
            newEventsLength) {
          hasChanges = true;

        } else {
          // Iterate over both lists and compare each Event
          for (int i = 0; i < oldEventsLength; i++) {
            if (_events.embedded.events[i].name !=
                fetchedEvents.embedded.events[i].name) {
              hasChanges = true;
              print(hasChanges);
              break;
            }
          }
        }
      }
      print('State Has Changed ? : $hasChanges');

      if (hasChanges || _firstTimeLoading) {
        _events = fetchedEvents;
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

// Future<List<Event>> _fetchEventsFromAPI() async {
//   // Fetch events from the API
// }

