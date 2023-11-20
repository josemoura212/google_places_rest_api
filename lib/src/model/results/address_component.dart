import 'dart:convert';

class AddressComponent {
  String longName;
  String shortName;
  List<String> types;
  AddressComponent({
    required this.longName,
    required this.shortName,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return {
      'long_name': longName,
      'short_name': shortName,
      'types': types,
    };
  }

  factory AddressComponent.fromMap(Map<String, dynamic> map) {
    return AddressComponent(
      longName: map['long_name'] ?? '',
      shortName: map['short_mame'] ?? '',
      types: List<String>.from(map['types']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressComponent.fromJson(String source) =>
      AddressComponent.fromMap(json.decode(source));

  @override
  String toString() =>
      'AddressComponent(longName: $longName, shortName: $shortName, types: $types)';
}
