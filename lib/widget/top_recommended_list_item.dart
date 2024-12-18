/*
import 'package:books_realism_app/screen/book_details_screen.dart';
import 'package:flutter/cupertino.dart';

class TopRecommendedListItem extends StatelessWidget {
  final int index;
  TopRecommendedListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 150,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            BookDetailsScreen.routeName,
            arguments: {
              'isbn' : bookList[index].isbn,
              'title' : bookList[index].title,
              'author' : bookList[index].author,
              'country' : bookList[index].country,
              'imageUrl' : bookList[index].imageUrl,
              'description' : bookList[index].description,
              'rating' : bookList[index].rating,
              'year' : bookList[index].year,
              'pagesNumber' : bookList[index].pagesNumber
            }
          ),
        },
      ),
    );
  }
} */