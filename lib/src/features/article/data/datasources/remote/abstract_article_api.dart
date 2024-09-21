import 'package:articles_app/src/features/article/data/models/article_model/article_model.dart';
import 'package:articles_app/src/features/article/data/models/article_param.dart';
import 'package:articles_app/src/features/article/data/models/article_response.dart';

abstract class AbstractArticleApi  {
  Future<ApiResponse<List<ArticleModel>>> getArticles(ArticlesParams params);
}