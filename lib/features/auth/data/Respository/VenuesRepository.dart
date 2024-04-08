import 'package:cleancodeprovider/features/auth/domain/models/events_entity.dart';
import 'package:cleancodeprovider/features/auth/domain/models/venues_entity.dart';

import '../../../../locator/injector.dart';
import '../../domain/models/attractions_entity.dart';
import '../data_source/events_api_services.dart';
import '../data_source/venues_api_services.dart';

class venuesRepository{

  final VenuesApiServices  venuesApiServices=locator<VenuesApiServices>();

  Future<VenuesEntity> getVenueslist() async{
    final Venueslist = await venuesApiServices.getVenues();
    return Venueslist;

  }
}