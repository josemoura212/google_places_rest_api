import 'package:google_places_rest_api/src/model/response.dart';

abstract class PlaceRepository {
  Future<Response> findAutocomplete({
    required String query,
    required String key,
  });
}
