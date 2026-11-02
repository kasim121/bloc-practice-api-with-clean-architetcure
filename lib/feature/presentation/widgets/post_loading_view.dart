import 'package:flutter/material.dart';

/// SRP: loading UI only.
class PostLoadingView extends StatelessWidget {
  const PostLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
