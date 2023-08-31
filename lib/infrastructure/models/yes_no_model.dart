import 'dart:convert';

import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromMap(Map<String, dynamic> json) => YesNoModel(
    answer: json["answer"],
    forced: json["forced"],
    image: json["image"],
  );

  Map<String, dynamic> toMap() => {
    "answer": answer,
    "forced": forced,
    "image": image,
  };

  Message toMessageEntity() =>
      Message(text: answer, fromWho: FromWho.hers, imageUrl: image);
}

