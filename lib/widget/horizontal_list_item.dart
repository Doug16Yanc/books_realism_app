
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../repository/bookList.dart';
import '../screen/book_details_screen.dart';

class HorizontalListItem extends StatelessWidget {
  final int index;
  HorizontalListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 180,
      child: GestureDetector(
        onTap : () {
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
            },
          );
        },
        child: Column(
          children : <Widget> [
            Card(
              elevation : 15,
              child : Hero(
                tag : bookList[index].isbn,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image : DecorationImage(
                      fit : BoxFit.cover,
                      image : NetworkImage(bookList[index].imageUrl)
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: 15
            ),
            Text(
              bookList[index].title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center
            ),
          ],
        ),
      ),
    );
  }
}