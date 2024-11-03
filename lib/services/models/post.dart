part of '../api.dart';

class Post {
  final int id;
  final String title;
  final String body;
  final List<String> tags;
  final Reaction reactions;
  final int views;
  final int userId;

  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.tags,
    required this.reactions,
    required this.views,
    required this.userId,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      tags: json['tags'],
      reactions: Reaction.fromJson(json['reactions']),
      views: json['views'],
      userId: json['userId'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'tags': tags,
      'reactions': reactions,
      'views': views,
      'userId': userId,
    };
  }

  // function to convert the json to a List of Post
  static List<Post> fromJsonList(List<dynamic> jsonList) {
    List<Post> posts = [];
    jsonList.forEach((json) {
      posts.add(Post.fromJson(json));
    });
    return posts;
  }
}
