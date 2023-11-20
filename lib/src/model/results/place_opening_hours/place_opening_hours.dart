import 'dart:convert';

import 'package:google_places_rest_api/src/model/results/place_opening_hours/place_opening_hours_period.dart';
import 'package:google_places_rest_api/src/model/results/place_opening_hours/place_special_day.dart';

class PlaceOpeningHours {
  bool? openNow;
  List<PlaceOpeningHoursPeriod>? periods;
  List<PlaceSpecialDay>? specialDays;
  String? type;
  List<String>? weekdayText;
  PlaceOpeningHours({
    this.openNow,
    this.periods,
    this.specialDays,
    this.type,
    this.weekdayText,
  });

  Map<String, dynamic> toMap() {
    return {
      'open_now': openNow,
      'periods': periods?.map((x) => x.toMap()).toList(),
      'special_days': specialDays?.map((x) => x.toMap()).toList(),
      'type': type,
      'weekday_text': weekdayText,
    };
  }

  factory PlaceOpeningHours.fromMap(Map<String, dynamic> map) {
    return PlaceOpeningHours(
      openNow: map['open_now'],
      periods: map['periods'] != null
          ? List<PlaceOpeningHoursPeriod>.from(
              map['periods']?.map((x) => PlaceOpeningHoursPeriod.fromMap(x)))
          : null,
      specialDays: map['special_days'] != null
          ? List<PlaceSpecialDay>.from(
              map['special_days']?.map((x) => PlaceSpecialDay.fromMap(x)))
          : null,
      type: map['type'],
      weekdayText: map["weekday_text"] != null
          ? List<String>.from(map['weekday_text'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceOpeningHours.fromJson(String source) =>
      PlaceOpeningHours.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PlaceOpeningHours(openNow: $openNow, periods: $periods, specialDays: $specialDays, type: $type, weekdayText: $weekdayText)';
  }
}
