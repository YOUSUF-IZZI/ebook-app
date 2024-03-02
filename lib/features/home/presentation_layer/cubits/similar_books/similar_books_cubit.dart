import 'package:bloc/bloc.dart';
import 'package:ebook/features/home/data_layer/api_services.dart';
import 'package:ebook/features/home/domain_layer/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit() : super(SimilarBooksInitial());

  Future<void> getSimilarBooks() async {
    emit(SimilarBooksLoading());
    final result = await ApiServices().getSimilarBooks();
    result.fold(
      (failure) => emit(SimilarBooksFailure(failure.errorMessage)),
      (books) => emit(SimilarBooksSuccess(books)),
    );
  }
}
