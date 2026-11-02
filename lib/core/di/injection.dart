import 'package:blocprac/core/network/api_client.dart';
import 'package:blocprac/feature/data/datasource/post_datasource.dart';
import 'package:blocprac/feature/data/repositoryimpl/post_repository_impl.dart';
import 'package:blocprac/feature/domain/usecase/post_usecase.dart';
import 'package:blocprac/feature/presentation/bloc/post_bloc.dart';

/// SRP: composition root — wires classes together.
///
/// MyApp must not construct Dio, datasource, repository, and use case.
/// That mixing was a Single Responsibility violation.
class Injection {
  Injection._();

  static PostBloc providePostBloc() {
    final apiClient = ApiClient.instance;
    final datasource = PostDatasourceImpl(apiClient);
    final repository = PostDataRepositoryImpl(datasource);
    final getPostUsecase = GetPostUsecase(repository);
    return PostBloc(getPostUsecase: getPostUsecase);
  }
}
