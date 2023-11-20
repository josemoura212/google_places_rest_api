import 'dart:convert';

class PlaceSpecialDay {
  String? date;
  bool? exceptionalHours;
  PlaceSpecialDay({
    this.date,
    this.exceptionalHours,
  });

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'exceptional_hours': exceptionalHours,
    };
  }

  factory PlaceSpecialDay.fromMap(Map<String, dynamic> map) {
    return PlaceSpecialDay(
      date: map['date'],
      exceptionalHours: map['exceptional_hours'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceSpecialDay.fromJson(String source) =>
      PlaceSpecialDay.fromMap(json.decode(source));

  @override
  String toString() =>
      'PlaceSpecialDay(date: $date, exceptionalHours: $exceptionalHours)';
}
