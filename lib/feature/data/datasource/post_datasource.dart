import 'package:blocprac/core/constant/api_constant.dart';
import 'package:blocprac/core/network/api_client.dart';
import 'package:blocprac/feature/data/models/post_model.dart';

/// SRP: remote posts API only. No mapping to domain, no UI, no BLoC.
abstract interface class PostDatasource {
  Future<List<PostModel>> getPosts();
}

class PostDatasourceImpl implements PostDatasource {
  final ApiClient apiClient;

  PostDatasourceImpl(this.apiClient);

  @override
  Future<List<PostModel>> getPosts() async {
    final response = await apiClient.get(ApiConstant.postsPath);
    final json = response.data as List<dynamic>;
    return json
        .map((item) => PostModel.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}

