
import 'package:dio/dio.dart';
import '../../../../constants/const.dart';
import '../../../../core/keys/env.dart';
import '../../domain/models/attraction_detail_entity.dart';
import '../../domain/models/attractions_entity.dart';
import '../../domain/models/events_entity.dart';
import 'events_api_services.dart';


class AttractionApiServices {
  final Dio dio;
  AttractionApiServices(this.dio);

  Future<AttractionsEntity> getAttractions() async {

    try {
      final response = await dio.get('attractions.json');
      if (response.statusCode == DIO_SUCCESS||response.statusCode==DIO_CACHE) {
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
}






