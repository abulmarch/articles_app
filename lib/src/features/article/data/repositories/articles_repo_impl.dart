import 'package:articles_app/src/core/network/error/exceptions.dart';
import 'package:articles_app/src/core/network/error/failure.dart';
import 'package:articles_app/src/features/article/data/datasources/remote/article_impl_api.dart';
import 'package:articles_app/src/features/article/data/models/article_model/article_model.dart';
import 'package:articles_app/src/features/article/data/models/article_param.dart';
import 'package:articles_app/src/features/article/domain/repositories/abstract_articles_repository.dart';
import 'package:dartz/dartz.dart';

class ArticlesRepoImpl extends AbstractArticlesRepository {
  final ArticleImplApi articleApi;

  ArticlesRepoImpl(this.articleApi);
  @override
  Future<Either<Failure, List<ArticleModel>>> getNyTimesArticle(
      ArticlesParams params)async {
    try {
      final result = await articleApi.getArticles(params);
      return Right(result.results ?? []);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    }
  }
}
