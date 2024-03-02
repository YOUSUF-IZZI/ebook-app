import 'package:bloc/bloc.dart';
import 'package:ebook/features/home/domain_layer/book_model/book_model.dart';
import 'package:ebook/features/search/data_layer/search_service.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  void searchBooks({required String query}) async {
    emit(SearchLoading());
    final result = await SearchService().getSearchResults(query: query);
    result.fold(
      (failure) => emit(SearchFailure(failure.errorMessage)),
      (books) => emit(SearchSuccess(books)),
    );
  }
}
