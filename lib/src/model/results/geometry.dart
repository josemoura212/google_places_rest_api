import 'dart:convert';

import 'package:google_places_rest_api/src/model/results/location.dart';
import 'package:google_places_rest_api/src/model/results/viewport.dart';

class Geometry {
  Location location;
  Viewport viewport;
  Geometry({
    required this.location,
    required this.viewport,
  });

  Map<String, dynamic> toMap() {
    return {
      'location': location.toMap(),
      'viewport': viewport.toMap(),
    };
  }

  factory Geometry.fromMap(Map<String, dynamic> map) {
    return Geometry(
      location: Location.fromMap(map['location']),
      viewport: Viewport.fromMap(map['viewport']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Geometry.fromJson(String source) =>
      Geometry.fromMap(json.decode(source));

  @override
  String toString() => 'Geometry(location: $location, viewport: $viewport)';
}
