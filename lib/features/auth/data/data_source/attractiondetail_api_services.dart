
import 'dart:convert';
import 'dart:core';
import 'package:dio/dio.dart';

import '../../../../constants/const.dart';
import '../../../../core/keys/env.dart';
import '../../domain/models/attraction_detail_entity.dart';

class AttractiondetailApiServices {

  final Dio dio;
  AttractiondetailApiServices(this.dio);

  Future<AttractionDetailEntity> getAttractionDetail(String id) async {
    try {
      final response = await dio.get('attractions/$id.json');
      if (response.statusCode == DIO_SUCCESS||response.statusCode==DIO_CACHE) {
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






