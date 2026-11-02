import 'package:blocprac/feature/presentation/bloc/post_bloc.dart';
import 'package:blocprac/feature/presentation/bloc/post_state.dart';
import 'package:blocprac/feature/presentation/widgets/post_error_view.dart';
import 'package:blocprac/feature/presentation/widgets/post_list_view.dart';
import 'package:blocprac/feature/presentation/widgets/post_loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// SRP: screen layout + wiring UI to BLoC states.
///
/// It does not fetch posts, parse JSON, or know about Dio.
class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is LoadingPostState) {
            return const PostLoadingView();
          }
          if (state is SuccessPostState) {
            return PostListView(posts: state.posts);
          }
          if (state is ErrorPostState) {
            return PostErrorView(message: state.error);
          }
          return const Center(child: Text('No Data'));
        },
      ),
    );
  }
}
