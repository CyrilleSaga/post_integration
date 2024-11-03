part of '../api.dart';

class Reaction {
  final int likes;
  final int dislikes;

  Reaction({
    required this.likes,
    required this.dislikes,
  });

  factory Reaction.fromJson(Map<String, dynamic> json) {
    return Reaction(
      likes: json['likes'],
      dislikes: json['dislikes'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'likes': likes,
      'dislikes': dislikes,
    };
  }
}
