import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'post.g.dart';

@JsonSerializable()
class Post extends Equatable{
  int userId;
  int id;
  String title;
  String body;

  Post({this.userId, this.id, this.title, this.body}) : super([userId, id, title, body]);

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);

  @override
  String toString() => 'Post { id: $id }';
}