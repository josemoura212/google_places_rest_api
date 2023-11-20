import 'dart:convert';

class PlaceOpeningHoursPeriodDetail {
  int day;
  String time;
  String? date;
  bool? truncated;
  PlaceOpeningHoursPeriodDetail({
    required this.day,
    required this.time,
    this.date,
    this.truncated,
  });

  Map<String, dynamic> toMap() {
    return {
      'day': day,
      'time': time,
      'date': date,
      'truncated': truncated,
    };
  }

  factory PlaceOpeningHoursPeriodDetail.fromMap(Map<String, dynamic> map) {
    return PlaceOpeningHoursPeriodDetail(
      day: map['day']?.toInt() ?? 0,
      time: map['time'] ?? '',
      date: map['date'],
      truncated: map['truncated'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceOpeningHoursPeriodDetail.fromJson(String source) =>
      PlaceOpeningHoursPeriodDetail.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PlaceOpeningHoursPeriodDetail(day: $day, time: $time, date: $date, truncated: $truncated)';
  }
}
