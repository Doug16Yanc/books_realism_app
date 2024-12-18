
import 'package:books_realism_app/screen/book_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../repository/bookRecommendedList.dart';

class VerticalListItem extends StatelessWidget {
  final int index;
  VerticalListItem(this.index);

  @override
  Widget build(BuildContext context) {
     return Column(
       children: <Widget> [
         GestureDetector(
           onTap : () {
             Navigator.of(context).pushNamed(
               BookDetailsScreen.routeName,
               arguments: {
                 'isbn' : bookRecommendedList[index].isbn,
                 'title' : bookRecommendedList[index].title,
                 'author' : bookRecommendedList[index].author,
                 'country' : bookRecommendedList[index].country,
                 'imageUrl' : bookRecommendedList[index].imageUrl,
                 'description' : bookRecommendedList[index].description,
                 'rating' : bookRecommendedList[index].rating,
                 'year' : bookRecommendedList[index].year,
                 'pagesNumber' : bookRecommendedList[index].pagesNumber
               },
             );
           },
           child : Card(
             elevation : 7,
             child : Row(
               children: <Widget>[
                 Hero(
                   tag : bookRecommendedList[index].isbn,
                   child: Container(
                     height: 130,
                     width: 110,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                         bottomLeft: Radius.circular(7),
                         topLeft: Radius.circular(7)
                       ),
                       image: DecorationImage(
                         fit : BoxFit.cover,
                         image : NetworkImage(
                             bookRecommendedList[index].imageUrl),
                       ),
                     ),
                   ),
                 ),
                 Container(
                   padding: const EdgeInsets.all(15),
                   height: 120,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text(
                         bookRecommendedList[index].title,
                         style: TextStyle(
                           fontSize: 19,
                           fontWeight: FontWeight.bold
                         ),
                       ),
                       SizedBox(
                         height: 2,
                       ),
                       Container(
                         width: 200,
                         child : Text(
                           bookRecommendedList[index].author
                         ),
                       ),
                       SizedBox(
                         height: 2
                       ),
                       Container(
                         width: 200,
                         child : Text(
                          bookRecommendedList[index].country
                         ),
                       ),
                       SizedBox(
                         height: 2
                       ),
                       Container(
                         width: 200,
                         child : Text(
                           "${bookRecommendedList[index].pagesNumber} páginas",
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ),
         SizedBox(
           height: 12,
         )
       ],
     );
  }

}