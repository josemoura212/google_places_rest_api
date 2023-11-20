import 'dart:convert';

import 'package:google_places_rest_api/src/model/results/place_opening_hours/place_opening_hours_period_detail.dart';

class PlaceOpeningHoursPeriod {
  PlaceOpeningHoursPeriod({
    required this.open,
    this.close,
  });
  PlaceOpeningHoursPeriodDetail open;
  PlaceOpeningHoursPeriodDetail? close;

  Map<String, dynamic> toMap() {
    return {
      "open": open.toMap(),
      "close": close?.toMap(),
    };
  }

  factory PlaceOpeningHoursPeriod.fromMap(Map<String, dynamic> map) {
    return PlaceOpeningHoursPeriod(
      open: map["open"],
      close: map["close"],
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceOpeningHoursPeriod.fromJson(String source) =>
      PlaceOpeningHoursPeriod.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PlaceOpeningHoursPeriod{open=$open, close=$close}';
  }
}
