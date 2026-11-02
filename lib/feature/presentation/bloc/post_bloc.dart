import 'package:blocprac/feature/domain/usecase/post_usecase.dart';
import 'package:blocprac/feature/presentation/bloc/post_event.dart';
import 'package:blocprac/feature/presentation/bloc/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// SRP: UI state machine for posts.
///
/// BLoC decides loading / success / error.
/// It does not parse JSON, know Dio, or build widgets.
class PostBloc extends Bloc<PostEvent, PostState> {
  final GetPostUsecase getPostUsecase;

  PostBloc({required this.getPostUsecase}) : super(InitialPostState()) {
    on<FetchPostEvent>(_onFetchPosts);
  }

  Future<void> _onFetchPosts(
    FetchPostEvent event,
    Emitter<PostState> emit,
  ) async {
    emit(LoadingPostState());
    try {
      final posts = await getPostUsecase.call();
      emit(SuccessPostState(posts));
    } catch (e) {
      emit(ErrorPostState(e.toString()));
    }
  }
}
