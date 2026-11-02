import 'package:blocprac/feature/domain/entitie/post_entity.dart';

/// SRP + DIP: domain contract for posts.
///
/// Domain never cares whether data comes from API, cache, or DB.
abstract class DomainPostRepository {
  Future<List<Post>> getPostsDomainRepository();
}
