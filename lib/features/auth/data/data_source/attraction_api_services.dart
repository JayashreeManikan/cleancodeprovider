
import 'package:dio/dio.dart';
import '../../domain/models/attraction_detail_entity.dart';
import '../../domain/models/attractions_entity.dart';
import '../../domain/models/events_entity.dart';


class AttractionApiServices {

  Future<AttractionsEntity> getAttractions() async {
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
      final response = await dio.get('attractions.json',
          queryParameters: {'size':1});
      if (response.statusCode == 200) {
        print('GotResponse: ${response.data}');
        return AttractionsEntity.fromJson(response.data);
      } else {
        throw Exception('Failed to receive data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching events: $e');
      throw Exception('Failed to fetch events');
    }
  }

  Future<AttractionDetailEntity> getAttractionsDetail(String id) async {
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
      final response = await dio.get('attractions/$id.json');
      if (response.statusCode == 200) {
        print('GotResponse: ${response.data}');
        return AttractionDetailEntity.fromJson(response.data);
      } else {
        throw Exception('Failed to receive data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching events: $e');
      throw Exception('Failed to fetch events');
    }
  }
}






