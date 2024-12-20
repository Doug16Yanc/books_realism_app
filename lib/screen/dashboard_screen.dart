import 'package:books_realism_app/repository/bookRecommendedList.dart';
import 'package:books_realism_app/widget/vertical_list_item.dart';
import 'package:flutter/material.dart';

import '../repository/bookList.dart';
import '../widget/horizontal_list_item.dart';
import 'book_details_screen.dart';


class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Obras do realismo'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body : SingleChildScrollView(
        child : Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Obras realistas notórias',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
               /* TextButton(
                  child : Text("Ver mais"),
                  onPressed : () {}
                ), */
              ],
            ),
            ),
            Container(
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bookList.length,
                itemBuilder: (ctx, i) => HorizontalListItem(i),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recomendados',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height : 400,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: bookRecommendedList.length,
                itemBuilder: (ctx, i) => VerticalListItem(i),
              ),
            )
          ],
        ),
      ),
    );
  }
}