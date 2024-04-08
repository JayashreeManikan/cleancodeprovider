import 'package:cleancodeprovider/features/auth/domain/models/events_entity.dart';

import '../../../../locator/injector.dart';
import '../../domain/models/attractions_entity.dart';
import '../data_source/events_api_services.dart';

class EventRepository{

  final ApiServices  apiService=locator<ApiServices>();



  Future<EventsEntity> getEventslist() async{
    final Eventlist = await apiService.getEvents();
    return Eventlist;

  }
}