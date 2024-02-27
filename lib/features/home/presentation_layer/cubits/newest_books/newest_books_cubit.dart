import 'package:ebook/features/home/presentation_layer/cubits/newest_books/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data_layer/api_services.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());

  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());
    final response = await ApiServices().getNewestBooks();
    response.fold((failure) => emit(NewestBooksFailure(failure.errorMessage)),
        (books) => emit(NewestBooksSuccess(books)));
  }
}
