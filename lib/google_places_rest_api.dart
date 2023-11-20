import 'package:google_places_rest_api/src/core/rest_client/dio/dio_rest_client.dart';
import 'package:google_places_rest_api/src/core/rest_client/rest_client.dart';
import 'package:google_places_rest_api/src/model/response.dart';
import 'package:google_places_rest_api/src/repository/place/impl_place_repository.dart';
import 'package:google_places_rest_api/src/repository/place/place_repository.dart';
import 'package:google_places_rest_api/src/services/place/impl_place_services.dart';
import 'package:google_places_rest_api/src/services/place/place_services.dart';

class GooglePlacesRestApi {
  late RestClient restClient;
  late PlaceRepository repository;
  late PlaceServices services;
  String googleApiKey;
  GooglePlacesRestApi({
    required this.googleApiKey,
  }) {
    restClient = DioRestClient();
    repository = ImplPlaceRepository(restClient: restClient);
    services = ImplPlaceServices(repository: repository);
  }

  Future<Response?> findAutocomplete({
    required String query,
  }) async {
    try {
      final response =
          await services.findAutocomplete(query: query, key: googleApiKey);
      return response;
    } on Exception {
      throw Exception();
    }
  }
}
