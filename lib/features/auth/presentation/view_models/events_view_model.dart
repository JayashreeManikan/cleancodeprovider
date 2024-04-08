import 'package:cleancodeprovider/features/auth/data/Respository/EventRespository.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/network/api_status.dart';
import '../../data/data_source/events_api_services.dart';

import '../../domain/models/events_entity.dart';

class EventViewModel extends ChangeNotifier {

  //final ApiServices _apiServices = ApiServices();
  final EventRepository _eventRepository= EventRepository();

  late EventsEntity _events=EventsEntity();
  late EventsEntity searchedEvents=EventsEntity();
  bool _loading = false;
  bool _firstTimeLoading = true;
  String _error = '';
  String searchText='';


  bool get loading => _loading;

  String get error => _error;

  EventsEntity get events => _events;

  Future<void> fetchEvent() async {
    try {
      _loading = true;
      //notifyListeners();
       EventsEntity fetchedEvents = (await _eventRepository.getEventslist());

      _loading = false;

      // Check if the fetched events are different from the current events
      // Compare oldEvents and newEvents
      bool hasChanges = false;

      int? oldEventsLength = _events.embedded.events.length;
      int? newEventsLength=fetchedEvents.embedded.events.length;
        if (oldEventsLength != newEventsLength) {
          hasChanges = true;
        } else {
          // Iterate over both lists and compare each Event
          for (int i = 0; i < oldEventsLength; i++) {
            if (_events.embedded.events[i].name != fetchedEvents.embedded.events[i].name) {
              hasChanges = true;
              print(hasChanges);
              break;
            }
          }
        }
      print('State Has Changed ? : $hasChanges');

      if (hasChanges || _firstTimeLoading) {
        _events = fetchedEvents;
        _firstTimeLoading = false;
        updateData();
        //notifyListeners(); // Notify listeners only when the state has changed
      }
    } catch (e) {
      _loading = false;
      _error = e.toString();
      //notifyListeners();
    }
  }

  updateData(){
    searchedEvents.embedded.events.clear();
    if(searchText.isEmpty){
        searchedEvents.embedded.events.addAll(_events.embedded.events);
    }else{
      searchedEvents.embedded.events.addAll(_events.embedded.events.where((element) => element.name.toLowerCase().startsWith(searchText))
          .toList());

    }
    notifyListeners();
  }

  search(String name){
    searchText = name;
    updateData();

  }
}

// Future<List<Event>> _fetchEventsFromAPI() async {
//   // Fetch events from the API
// }

