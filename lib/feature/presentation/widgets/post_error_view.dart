import 'package:flutter/material.dart';

/// SRP: error UI only.
class PostErrorView extends StatelessWidget {
  final String message;

  const PostErrorView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
