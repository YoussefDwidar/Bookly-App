import 'package:bookapp/Features/splash/home/presentation/views/widget/book_rating_item.dart';
import 'package:bookapp/Features/splash/home/presentation/views/widget/similar_books_list_view.dart';
import 'package:bookapp/core/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'books_button_action.dart';
import 'custom_details_app_bar.dart';
import 'custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * .2,
            ),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 7,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const BooksAction(),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilarBooksListview(),
        ],
      ),
    );
  }
}
