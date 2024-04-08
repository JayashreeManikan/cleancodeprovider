
import 'dart:convert';
import 'dart:core';
import 'package:dio/dio.dart';

import '../../../../core/keys/env.dart';
import '../../domain/models/attraction_detail_entity.dart';

class AttractiondetailApiServices {

  String apiKey = Env.tmdbApiKey;

  Future<AttractionDetailEntity> getAttractionDetail(String id) async {
    try {
      Dio dio = Dio(BaseOptions(baseUrl:'https://app.ticketmaster.com/discovery/v2/',
          connectTimeout: Duration(milliseconds: 6000), // 60 seconds
          receiveTimeout: Duration(milliseconds: 3000) ));
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            // Add the API key to the query parameters
            options.queryParameters['apikey'] = apiKey;
            return handler.next(options);
          },
        ),
      );
      final response = await dio.get('attractions/$id.json');
      if (response.statusCode == 200) {
        print('GotResponse: ${response.data}');
         //final a= AttractionDetailEntity.fromJson(response.data);
        //print('Response as entity:$a');
        final attractionDetail = AttractionDetailEntity.fromJson(response.data);
        print('Response as entity name: ${attractionDetail.name}');
        return attractionDetail;
      } else {
        throw Exception('Failed to receive data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching events: $e');
      throw Exception('Failed to fetch events');
    }
  }


}






