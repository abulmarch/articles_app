import 'package:articles_app/src/core/network/error/dio_error_handler.dart';
import 'package:articles_app/src/core/network/error/exceptions.dart';
import 'package:articles_app/src/core/utils/constant/network_constant.dart';
import 'package:articles_app/src/features/article/data/datasources/remote/abstract_article_api.dart';
import 'package:articles_app/src/features/article/data/models/article_model/article_model.dart';
import 'package:articles_app/src/features/article/data/models/article_param.dart';
import 'package:articles_app/src/features/article/data/models/article_response.dart';
import 'package:dio/dio.dart';

class ArticleImplApi extends AbstractArticleApi {
  final Dio dio;
  CancelToken cancelToken = CancelToken();
  ArticleImplApi(this.dio);
  @override
  Future<ApiResponse<List<ArticleModel>>> getArticles(ArticlesParams params) async {
    try {
      final result = await dio.get(
        getArticlePath(params.period),
      );
      if (result.data == null)
        throw ServerException("Unknown Error", result.statusCode);
      return ApiResponse.fromJson<List<ArticleModel>>(
          result.data, ArticleModel.fromJsonList);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        throw CancelTokenException(handleDioError(e), e.response?.statusCode);
      } else {
        throw ServerException(handleDioError(e), e.response?.statusCode);
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(e.toString(), null);
    }
  }
}
