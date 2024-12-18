/*

import 'package:books_realism_app/screen/book_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/book.dart';

class VerticalListItem extends StatelessWidget {
  final int index;
  VerticalListItem(this.index)
  @override
  Widget build(BuildContext context) {
     return Column(
       children: <Widget> [
         GestureDetector(
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
           child : Card(
             elevation : 7,
             child : Row(
               children: <Widget>[
                 Hero(
                   tag : bookList[index].isbn,

                 )
               ],
             )
           )
         ),
       ],
     );
  }

}*/