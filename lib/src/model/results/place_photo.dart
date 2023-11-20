import 'dart:convert';

class PlacePhoto {
  double height;
  List<String> htmlAttributions;
  String photoReference;
  double width;
  PlacePhoto({
    required this.height,
    required this.htmlAttributions,
    required this.photoReference,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return {
      'height': height,
      'html_attributions': htmlAttributions,
      'photo_reference': photoReference,
      'width': width,
    };
  }

  factory PlacePhoto.fromMap(Map<String, dynamic> map) {
    return PlacePhoto(
      height: map['height']?.toDouble() ?? 0.0,
      htmlAttributions: List<String>.from(map['html_attributions']),
      photoReference: map['photo_reference'] ?? '',
      width: map['width']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PlacePhoto.fromJson(String source) =>
      PlacePhoto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PlacePhoto(height: $height, htmlAttributions: $htmlAttributions, photoReference: $photoReference, width: $width)';
  }
}
