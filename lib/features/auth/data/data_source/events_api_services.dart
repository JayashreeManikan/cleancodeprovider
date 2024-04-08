
import 'package:cleancodeprovider/core/keys/env.dart';
import 'package:dio/dio.dart';
import '../../../../locator/injector.dart';
import '../../domain/models/events_entity.dart';
import 'package:envied/envied.dart';


class ApiServices {
final Dio dio;
  ApiServices(this.dio);

  Future<EventsEntity> getEvents() async {

    // Dio dio =locator<Dio>();

    try {

      final response = await dio.get('events.json');
      if (response.statusCode == 200|| response.statusCode==304) {
        print('GotResponse: ${response.data}');
        return EventsEntity.fromJson(response.data);

      } else {
        throw Exception('Failed to receive data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching events: $e');
      throw Exception('Failed to fetch events');
    }
  }
}






