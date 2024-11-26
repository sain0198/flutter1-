import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Doto', // Default font family
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Layout'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              // First Horizontal ListView (images from assets)
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/images/image${index + 1}.jpg', // Image from assets
                        width: 200,
                        height: 200,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),  // Space between ListViews

              // ListTiles with different font variations
              const ListTile(
                leading: Icon(Icons.star),
                title: Text(
                  'ListTile with Regular Font',
                  style: TextStyle(fontFamily: 'Doto'),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: Text(
                  'ListTile with Bold Font',
                  style: TextStyle(fontFamily: 'Doto', fontWeight: FontWeight.bold),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'ListTile with Italic Font',
                  style: TextStyle(fontFamily: 'Doto', fontStyle: FontStyle.italic),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text(
                  'ListTile with Thin Font',
                  style: TextStyle(fontFamily: 'Doto', fontWeight: FontWeight.w100),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.lightbulb),
                title: Text(
                  'ListTile with Light Font',
                  style: TextStyle(fontFamily: 'Doto', fontWeight: FontWeight.w300),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.star_border),
                title: Text(
                  'ListTile with ExtraBold Font',
                  style: TextStyle(fontFamily: 'Doto', fontWeight: FontWeight.w800),
                ),
              ),
              const ListTile(
                trailing: Icon(Icons.arrow_forward),
                title: Text('Default Device Font'),
              ),
              const SizedBox(height: 20),  // Space between ListTiles

              // Second Horizontal ListView (images from assets)
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/images/image${index + 1}.jpg', // Image from assets
                        width: 200,
                        height: 200,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
