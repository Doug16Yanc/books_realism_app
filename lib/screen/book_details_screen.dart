import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  static const routeName = '/book-details';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final isbn = routeArgs?['isbn']?.toString() ?? '';
    final rating = routeArgs?['rating']?.toString() ?? '';
    final year = routeArgs?['year']?.toString() ?? '';

    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      appBar: AppBar(
        backgroundColor: const Color(0xfff4f4f4),
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
                  tag: isbn.isNotEmpty ? isbn : 'placeholder-tag',
                  child: Container(
                    height: 450,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          routeArgs?['imageUrl'] ??
                              '',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              routeArgs?['title'] ?? '',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: _buildCard(
                    context,
                    icon: Icons.edit,
                    text: routeArgs?['author'] ?? '',
                  ),
                ),
                Expanded(
                  child: _buildCard(
                    context,
                    icon: Icons.calendar_today,
                    text: year,
                  ),
                ),
                Expanded(
                  child: _buildCard(
                    context,
                    icon: Icons.star_border,
                    text: '$rating/5',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              routeArgs?['description'] ?? '',
              style: const TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
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
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
