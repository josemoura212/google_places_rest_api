import 'dart:convert';

class PlaceReview {
  String authorName;
  double rating;
  String relativeTimeDescription;
  double time;
  String? authorUrl;
  String? language;
  String? originalLanguage;
  String? profilePhotoUrl;
  String? text;
  bool? translated;
  PlaceReview({
    required this.authorName,
    required this.rating,
    required this.relativeTimeDescription,
    required this.time,
    this.authorUrl,
    this.language,
    this.originalLanguage,
    this.profilePhotoUrl,
    this.text,
    this.translated,
  });

  Map<String, dynamic> toMap() {
    return {
      'author_name': authorName,
      'rating': rating,
      'relative_time_description': relativeTimeDescription,
      'time': time,
      'author_url': authorUrl,
      'language': language,
      'original_language': originalLanguage,
      'profile_photo_url': profilePhotoUrl,
      'text': text,
      'translated': translated,
    };
  }

  factory PlaceReview.fromMap(Map<String, dynamic> map) {
    return PlaceReview(
      authorName: map['author_name'] ?? '',
      rating: map['rating']?.toDouble() ?? 0.0,
      relativeTimeDescription: map['relative_time_description'] ?? '',
      time: map['time']?.toDouble() ?? 0.0,
      authorUrl: map['author_url'],
      language: map['language'],
      originalLanguage: map['original_language'],
      profilePhotoUrl: map['profile_photo_url'],
      text: map['text'],
      translated: map['translated'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceReview.fromJson(String source) =>
      PlaceReview.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PlaceReview(authorName: $authorName, rating: $rating, relativeTimeDescription: $relativeTimeDescription, time: $time, authorUrl: $authorUrl, language: $language, originalLanguage: $originalLanguage, profilePhotoUrl: $profilePhotoUrl, text: $text, translated: $translated)';
  }
}
