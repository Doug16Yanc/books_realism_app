import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  static const routeName = '/book-details';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    final isbn = routeArgs?['isbn'] ?? '';
    final rating = routeArgs?['rating'] ?? '';

    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      appBar: AppBar(
        backgroundColor: Color(0xfff4f4f4),
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                elevation: 5,
                child: Hero(
                  tag: isbn,
                  child: Container(
                    height: 450,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(routeArgs?['imageUrl'] ?? ''),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              routeArgs?['title'] ?? '',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildCard(
                  context,
                  icon: Icons.timer,
                  text: routeArgs?['author'] ?? '',
                ),
                _buildCard(
                  context,
                  icon: Icons.calendar_today,
                  text: routeArgs?['year'] ?? '',
                ),
                _buildCard(
                  context,
                  icon: Icons.star_border,
                  text: '$rating/10',
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              routeArgs?['description'] ?? '',
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, {required IconData icon, required String text}) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 45,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
