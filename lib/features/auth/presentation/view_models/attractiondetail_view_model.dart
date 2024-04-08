



import 'package:cleancodeprovider/features/auth/data/Respository/AttractionDetailRepository.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../data/data_source/attraction_api_services.dart';
import '../../data/data_source/attractiondetail_api_services.dart';
import '../../domain/models/attraction_detail_entity.dart';

class AttractiondetailViewModel extends ChangeNotifier {
  final attractionDetailRepository _attractionDetailRepository = attractionDetailRepository();

  late AttractionDetailEntity _attractionsdetail = AttractionDetailEntity(name: '', url: '', type: '', images: []);

  bool _loading = false;
  String _error = '';

  bool get loading => _loading;

  String get error => _error;
  AttractionDetailEntity get attractionsdetail => _attractionsdetail;

  Future<void> fetchAttractdetail(String id) async {
    try {

      print('Printing event id:${id}');
      _loading = true;
      print("I am  now loading");
      //notifyListeners();
      AttractionDetailEntity fetchedAttractiondetail = await _attractionDetailRepository.getattractionDetaillist(id);
      print('This is fetched view model data:${fetchedAttractiondetail.name}');
      _attractionsdetail = fetchedAttractiondetail;
      _loading = false;
      notifyListeners();

    }

    catch (e) {
      _loading = false;
      _error = e.toString();
      //notifyListeners();
    }
  }
}