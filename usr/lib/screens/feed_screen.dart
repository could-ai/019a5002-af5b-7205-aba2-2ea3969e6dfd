import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../widgets/post_card.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final List<Post> _posts = [
    Post(
      username: 'FlutterDev',
      userAvatarUrl: 'https://i.pravatar.cc/150?img=1',
      content:
          'Just built this cool social media feed with Flutter! It\'s amazing how quickly you can create beautiful UIs. #flutter #dart #mobiledev',
      imageUrl:
          'https://images.unsplash.com/photo-1542393545-10f5cde2c810?q=80&w=1901&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      likes: 123,
      comments: 45,
      shares: 12,
    ),
    Post(
      username: 'CreativeCoder',
      userAvatarUrl: 'https://i.pravatar.cc/150?img=2',
      content:
          'Exploring the new features in the latest Dart SDK. Null safety is a game changer!',
      likes: 89,
      comments: 23,
      shares: 5,
    ),
    Post(
      username: 'UI/UX Queen',
      userAvatarUrl: 'https://i.pravatar.cc/150?img=3',
      content:
          'Good design is about making other designers feel like idiots because that idea wasn’t theirs. Here is a sample of my latest work.',
      imageUrl:
          'https://images.unsplash.com/photo-1512486130939-2c4f79935e4f?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      likes: 402,
      comments: 102,
      shares: 50,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Feed'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _posts.length,
        itemBuilder: (context, index) {
          return PostCard(post: _posts[index]);
        },
      ),
    );
  }
}
