
import '../../../../locator/injector.dart';
import '../../domain/models/attractions_entity.dart';
import '../data_source/attraction_api_services.dart';

class AttractionRepository{

  final AttractionApiServices  attractionApiService=locator<AttractionApiServices>();



  Future<AttractionsEntity> getAttractionlist() async{
    final Attractionlist = await attractionApiService.getAttractions();
    return Attractionlist;

  }
}