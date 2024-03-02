import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:ebook/core/errors/failure.dart';
import 'package:ebook/features/home/domain_layer/book_model/book_model.dart';

class ApiServices {
  final Dio _dio = Dio();
  final String baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Either<Failure, List<BookModel>>> getNewestBooks() async {
    try {
      final response = await _dio.get(
          '${baseUrl}volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');
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
      return Left(ServerFailure(errorMessage: 'Something went wrong'));
    }
  }

  Future<Either<Failure, List<BookModel>>> getFeaturedBooks() async {
    try {
      final response = await _dio
          .get('${baseUrl}volumes?Filtering=free-ebooks&q=subject:Programming');
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
      return Left(ServerFailure(errorMessage: 'Something went wrong'));
    }
  }
}

// API services for the app
// dio package is used for making network requests
// error handling
// return type can be either list of BooksModel or error message from dartz package
// checking all the possible errors and returning the error message
// status codes checking
