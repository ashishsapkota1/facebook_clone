import 'package:meta/meta.dart';
import 'package:facebook_clone/models/model.dart';

class Post {
  final String caption;
  final User user;
  final String imageUrl;
  final String timeAgo;
  final int likes;
  final int comments;
  final int shares;

 const Post({
      required this.caption,
      required this.user,
      required this.imageUrl,
      required this.timeAgo,
      required this.likes,
      required this.comments,
      required this.shares});
}
