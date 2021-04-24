import 'dart:convert';

class AnwserModel {
  final String title;
  final bool isRight;

  AnwserModel({
    required this.title,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
    };
  }

  factory AnwserModel.fromMap(Map<String, dynamic> map) {
    return AnwserModel(
      title: map['title'],
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnwserModel.fromJson(String source) =>
      AnwserModel.fromMap(json.decode(source));
}
