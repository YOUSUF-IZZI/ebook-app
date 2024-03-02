import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ebook/core/errors/failure.dart';
import 'package:ebook/features/home/domain_layer/book_model/book_model.dart';

class SearchService {
  Dio dio = Dio();
  final String baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Either<Failure, List<BookModel>>> getSearchResults(
      {required String query}) async {
    try {
      final response = await dio
          .get('${baseUrl}volumes?Filtering=free-ebooks&q=subject:$query');
      if (response.statusCode == 200) {
        final List<BookModel> books = [];
        for (var item in response.data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return Right(books);
      } else {
        return Left(ServerFailure.fromStatusCode(response.statusCode!));
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
