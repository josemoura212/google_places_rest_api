import 'dart:convert';

class PlusCode {
  String globalCode;
  String? compoundCode;
  PlusCode({
    required this.globalCode,
    this.compoundCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'global_code': globalCode,
      'compound_code': compoundCode,
    };
  }

  factory PlusCode.fromMap(Map<String, dynamic> map) {
    return PlusCode(
      globalCode: map['global_code'] ?? '',
      compoundCode: map['compound_code'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PlusCode.fromJson(String source) =>
      PlusCode.fromMap(json.decode(source));

  @override
  String toString() =>
      'PlusCode(globalCode: $globalCode, compoundCode: $compoundCode)';
}
