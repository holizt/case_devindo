import 'dart:convert';

class PostModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel({this.userId, this.id, this.title, this.body});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

List<PostModel> apiModelFromJson(String str) =>
    List<PostModel>.from(json.decode(str).map((a) => PostModel.fromJson(a)));
