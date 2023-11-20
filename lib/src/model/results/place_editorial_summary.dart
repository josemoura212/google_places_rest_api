import 'dart:convert';

class PlaceEditorialSummary {
  String? language;
  String? overview;
  PlaceEditorialSummary({
    this.language,
    this.overview,
  });

  Map<String, dynamic> toMap() {
    return {
      'language': language,
      'overview': overview,
    };
  }

  factory PlaceEditorialSummary.fromMap(Map<String, dynamic> map) {
    return PlaceEditorialSummary(
      language: map['language'],
      overview: map['overview'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceEditorialSummary.fromJson(String source) =>
      PlaceEditorialSummary.fromMap(json.decode(source));

  @override
  String toString() =>
      'PlaceEditorialSummary(language: $language, overview: $overview)';
}
