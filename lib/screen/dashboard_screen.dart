import 'package:books_realism_app/repository/bookRecommendedList.dart';
import 'package:books_realism_app/widget/vertical_list_item.dart';
import 'package:flutter/material.dart';

import '../repository/bookList.dart';
import '../widget/horizontal_list_item.dart';

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
            Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Um realista em cada país',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                TextButton(
                  child : Text("Ver mais"),
                  onPressed : () {}
                ),
              ],
            ),
            ),
            Container(
              height: 290,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bookList.length,
                itemBuilder: (ctx, i) => HorizontalListItem(i),
              ),
            ),
            SizedBox(
              height: 3
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recomendados',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 13),
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: bookRecommendedList.length,
              itemBuilder: (ctx, i) => VerticalListItem(i),
            )
          ],
        ),
      ),
    );
  }
}