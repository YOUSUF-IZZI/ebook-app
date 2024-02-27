import 'package:bloc/bloc.dart';
import 'package:ebook/features/home/domain_layer/book_model/book_model.dart';
import 'package:meta/meta.dart';
import '../../../data_layer/api_services.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    final response = await ApiServices().getFeaturedBooks();
    response.fold(
          (failure) => emit(FeaturedBooksFailure(failure.errorMessage)),
          (books) => emit(FeaturedBooksSuccess(books)),);
  }
}
