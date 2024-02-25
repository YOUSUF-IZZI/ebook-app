import 'package:bloc/bloc.dart';
import 'package:ebook/features/home_view/domain_layer/books_model.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
