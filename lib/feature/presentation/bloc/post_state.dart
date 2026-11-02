import 'package:blocprac/feature/domain/entitie/post_entity.dart';

/// SRP: what the UI can show. No fetching logic lives here.
abstract class PostState {}

class InitialPostState extends PostState {}

class LoadingPostState extends PostState {}

class SuccessPostState extends PostState {
  final List<Post> posts;

  SuccessPostState(this.posts);
}

class ErrorPostState extends PostState {
  final String error;

  ErrorPostState(this.error);
}
