import 'package:blocprac/feature/data/datasource/post_datasource.dart';
import 'package:blocprac/feature/domain/entitie/post_entity.dart';
import 'package:blocprac/feature/domain/repository/post_repository.dart';

/// SRP: bridge data layer -> domain layer.
///
/// It asks the datasource for models and returns entities.
/// It does not call Dio itself and does not emit BLoC states.
class PostDataRepositoryImpl implements DomainPostRepository {
  final PostDatasource postDatasource;

  PostDataRepositoryImpl(this.postDatasource);

  @override
  Future<List<Post>> getPostsDomainRepository() async {
    final models = await postDatasource.getPosts();
    return models
        .map(
          (model) => Post(
            userId: model.userId,
            id: model.id,
            title: model.title,
            body: model.body,
          ),
        )
        .toList();
  }
}
