class Post {
  final String username;
  final String userAvatarUrl;
  final String content;
  final String? imageUrl;
  final int likes;
  final int comments;
  final int shares;

  Post({
    required this.username,
    required this.userAvatarUrl,
    required this.content,
    this.imageUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}
