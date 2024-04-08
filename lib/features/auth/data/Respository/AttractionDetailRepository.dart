import 'package:cleancodeprovider/features/auth/domain/models/attraction_detail_entity.dart';

import '../../../../locator/injector.dart';
import '../../domain/models/attractions_entity.dart';
import '../data_source/attraction_api_services.dart';
import '../data_source/attractiondetail_api_services.dart';

class attractionDetailRepository{

  final AttractiondetailApiServices  attractionDetailApiService=locator<AttractiondetailApiServices>();


  Future<AttractionDetailEntity> getattractionDetaillist(String id) async{
    final attractionDetaillist = await attractionDetailApiService.getAttractionDetail(id);
    return attractionDetaillist;

  }
}