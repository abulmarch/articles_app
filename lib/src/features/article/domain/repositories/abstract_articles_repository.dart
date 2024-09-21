import 'package:articles_app/src/core/network/error/failure.dart';
import 'package:articles_app/src/features/article/data/models/article_model/article_model.dart';
import 'package:articles_app/src/features/article/data/models/article_param.dart';
import 'package:dartz/dartz.dart';
abstract class AbstractArticlesRepository {
  Future<Either<Failure, List<ArticleModel>>> getNyTimesArticle(ArticlesParams params);
}