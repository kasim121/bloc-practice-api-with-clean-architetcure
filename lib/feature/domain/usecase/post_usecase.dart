import 'package:blocprac/feature/domain/entitie/post_entity.dart';
import 'package:blocprac/feature/domain/repository/post_repository.dart';

/// SRP: one use case = one user action.
///
/// "Get the post list" is a single reason to change.
/// If you later add "Get one post by id", create GetPostById — do not
/// dump that extra job into this class.
class GetPostUsecase {
  final DomainPostRepository domainPostRepository;

  GetPostUsecase(this.domainPostRepository);

  Future<List<Post>> call() {
    return domainPostRepository.getPostsDomainRepository();
  }
}
