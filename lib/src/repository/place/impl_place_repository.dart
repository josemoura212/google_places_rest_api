import 'package:google_places_rest_api/src/core/rest_client/rest_client.dart';
import 'package:google_places_rest_api/src/core/rest_client/rest_client_exception.dart';
import 'package:google_places_rest_api/src/core/rest_client/rest_client_response.dart';
import 'package:google_places_rest_api/src/model/response.dart';

import './place_repository.dart';

class ImplPlaceRepository implements PlaceRepository {
  final RestClient _restClient;
  ImplPlaceRepository({
    required RestClient restClient,
  }) : _restClient = restClient;
  @override
  Future<Response> findAutocomplete({
    required String query,
    required String key,
  }) async {
    try {
      final response = await _restClient.get("", queryParameters: {
        "query": query,
        "key": key,
      });

      return Response.fromMap(response.data);
    } on Exception catch (e) {
      throw RestClientException(error: e, response: RestClientResponse());
    }
  }
}
