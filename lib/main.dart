import 'package:flutter/material.dart';
import 'model/viewList.dart';

void main() {
  runApp(const viewListApp());
}

class viewListApp extends StatelessWidget {
  const viewListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scooter-CS SHOP',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 30, 150, 206),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      home: const MyHomePage(title: 'Scooter-CS SHOP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: ListView.builder(
          itemCount: viewList.samples.length,
          itemBuilder: (context, index) {
            return buildProductCard(viewList.samples[index]);
          },
        ),
      ),
    );
  }
}

Widget buildProductCard(viewList recipe) {
  return Card(
    child: Column(
      children: <Widget>[
        Image.asset(
          recipe.imageUrl,
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey[200],
              height: 200,
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.broken_image, size: 48, color: Colors.grey),
                  SizedBox(height: 8),
                  Text(
                    'Cannot load image',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    recipe.imageUrl,
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(recipe.imgLable),
        ),
      ],
    ),
  );
}
