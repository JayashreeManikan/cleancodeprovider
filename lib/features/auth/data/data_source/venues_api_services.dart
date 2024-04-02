
import 'package:dio/dio.dart';

import '../../domain/models/events_entity.dart';
import '../../domain/models/venues_entity.dart';


class VenuesApiServices {

  Future<VenuesEntity> getVenues() async {
    try {
      Dio dio = Dio(BaseOptions(baseUrl: 'https://app.ticketmaster.com/discovery/v2/'));
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            // Add the API key to the query parameters
            options.queryParameters['apikey'] = 'NCFcDCcZvNRAskkIlL4IawkrXQAvGRJl';
            return handler.next(options);
          },
        ),
      );
      final response = await dio.get('venues.json',
          queryParameters: {'size':1});
      if (response.statusCode == 200) {
        print('GotResponse: ${response.data}');
        return VenuesEntity.fromJson(response.data);
      } else {
        throw Exception('Failed to receive data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching events: $e');
      throw Exception('Failed to fetch events');
    }
  }
}






