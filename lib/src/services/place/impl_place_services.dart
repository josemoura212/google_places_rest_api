import 'package:google_places_rest_api/src/model/response.dart';
import 'package:google_places_rest_api/src/repository/place/place_repository.dart';

import './place_services.dart';

class ImplPlaceServices implements PlaceServices {
  final PlaceRepository _repository;
  ImplPlaceServices({
    required PlaceRepository repository,
  }) : _repository = repository;

  @override
  Future<Response> findAutocomplete(
          {required String query, required String key}) =>
      _repository.findAutocomplete(query: query, key: key);
}
