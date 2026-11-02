import 'package:blocprac/feature/domain/entitie/post_entity.dart';
import 'package:flutter/material.dart';

/// SRP: render a list of posts. It does not fetch or decide loading/error.
class PostListView extends StatelessWidget {
  final List<Post> posts;

  const PostListView({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return ListTile(
          title: Text(post.title),
          subtitle: Text(post.body),
        );
      },
    );
  }
}
