import 'package:articles_app/src/core/network/dio_network.dart';
import 'package:articles_app/src/core/utils/injections.dart';
import 'package:articles_app/src/features/article/data/datasources/remote/article_impl_api.dart';
import 'package:articles_app/src/features/article/data/repositories/articles_repo_impl.dart';
import 'package:articles_app/src/features/article/domain/repositories/abstract_articles_repository.dart';
import 'package:articles_app/src/features/article/domain/usecases/articles_usecase.dart';

initArticlesInjections() {
  sl.registerSingleton<ArticleImplApi>(ArticleImplApi(DioNetwork.appAPI));
  sl.registerSingleton<AbstractArticlesRepository>(ArticlesRepoImpl(sl()));
  // sl.registerSingleton<ArticlesSharedPrefs>(ArticlesSharedPrefs(sl()));
  sl.registerSingleton<ArticlesUsecase>(ArticlesUsecase(sl()));
}