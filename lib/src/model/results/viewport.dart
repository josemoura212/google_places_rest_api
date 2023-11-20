import 'dart:convert';

import 'package:google_places_rest_api/src/model/results/location.dart';

class Viewport {
  Location? northeast;
  Location? southwest;
  Viewport({
    this.northeast,
    this.southwest,
  });

  Map<String, dynamic> toMap() {
    return {
      'northeast': northeast?.toMap(),
      'southwest': southwest?.toMap(),
    };
  }

  factory Viewport.fromMap(Map<String, dynamic> map) {
    return Viewport(
      northeast:
          map['northeast'] != null ? Location.fromMap(map['northeast']) : null,
      southwest:
          map['southwest'] != null ? Location.fromMap(map['southwest']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Viewport.fromJson(String source) =>
      Viewport.fromMap(json.decode(source));

  @override
  String toString() => 'Viewport(northeast: $northeast, southwest: $southwest)';
}
