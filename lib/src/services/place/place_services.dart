import 'package:google_places_rest_api/src/model/response.dart';

abstract class PlaceServices {
  Future<Response> findAutocomplete({
    required String key,
    required String query,
  });
}
