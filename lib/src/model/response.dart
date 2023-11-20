import 'dart:convert';

import 'package:google_places_rest_api/src/model/results/place.dart';

class Response {
  List<String> htmlAttributions;
  List<Place> results;
  String status;
  String? errorMessage;
  List<String>? infoMessages;
  String? nextPageToken;
  Response({
    required this.htmlAttributions,
    required this.results,
    required this.status,
    this.errorMessage,
    this.infoMessages,
    this.nextPageToken,
  });

  Map<String, dynamic> toMap() {
    return {
      'html_attributions': htmlAttributions,
      'results': results.map((x) => x.toMap()).toList(),
      'status': status,
      'error_message': errorMessage,
      'info_messages': infoMessages,
      'next_page_token': nextPageToken,
    };
  }

  factory Response.fromMap(Map<String, dynamic> map) {
    return Response(
      htmlAttributions: List<String>.from(map['html_attributions']),
      results: List<Place>.from(map['results']?.map((x) => Place.fromMap(x))),
      status: map['status'] ?? '',
      errorMessage: map['error_message'],
      infoMessages: map['info_messages'] != null
          ? List<String>.from(map['info_messages'])
          : null,
      nextPageToken: map['next_page_token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Response.fromJson(String source) =>
      Response.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Response(htmlAttributions: $htmlAttributions, results: $results, status: $status, errorMessage: $errorMessage, infoMessages: $infoMessages, nextPageToken: $nextPageToken)';
  }
}
