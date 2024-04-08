
import 'package:dio/dio.dart';

import '../../../../core/keys/env.dart';
import '../../domain/models/events_entity.dart';
import '../../domain/models/venues_entity.dart';


class VenuesApiServices {
  String apiKey = Env.tmdbApiKey;

  final Dio dio;
  VenuesApiServices(this.dio);
  Future<VenuesEntity> getVenues() async {
    try {
      final response = await dio.get('venues.json');
      if (response.statusCode == 200||response.statusCode==304) {
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






