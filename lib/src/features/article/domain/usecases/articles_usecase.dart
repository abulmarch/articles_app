import 'package:articles_app/src/core/network/error/failure.dart';
import 'package:articles_app/src/core/utils/usecases/usecase.dart';
import 'package:articles_app/src/features/article/data/models/article_model/article_model.dart';
import 'package:articles_app/src/features/article/data/models/article_param.dart';
import 'package:articles_app/src/features/article/domain/repositories/abstract_articles_repository.dart';
import 'package:dartz/dartz.dart';

class ArticlesUsecase extends UseCase<List<ArticleModel>, ArticlesParams> {
  final AbstractArticlesRepository repository;

  ArticlesUsecase(this.repository);

  @override
  Future<Either<Failure, List<ArticleModel>>> call(ArticlesParams params) async{
   final result = await repository.getNyTimesArticle(params);
   return result.fold((l){
    return Left(l);
   }, (r)async{
    return Right(r);
   });
  }
}
