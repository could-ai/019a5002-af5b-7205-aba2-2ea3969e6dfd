import 'package:flutter/material.dart';
import '../models/post_model.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
      elevation: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 12.0),
            Text(post.content),
            if (post.imageUrl != null) ...[
              const SizedBox(height: 12.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(post.imageUrl!),
              ),
            ],
            const SizedBox(height: 12.0),
            _buildActionBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(post.userAvatarUrl),
        ),
        const SizedBox(width: 12.0),
        Text(
          post.username,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildActionBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildActionButton(Icons.thumb_up_alt_outlined, '${post.likes} Likes'),
        _buildActionButton(Icons.comment_outlined, '${post.comments} Comments'),
        _buildActionButton(Icons.share_outlined, '${post.shares} Shares'),
      ],
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 20.0, color: Colors.grey[600]),
        const SizedBox(width: 4.0),
        Text(
          label,
          style: TextStyle(color: Colors.grey[600]),
        ),
      ],
    );
  }
}
