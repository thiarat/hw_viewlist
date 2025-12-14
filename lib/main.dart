import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'model/viewList.dart';
import 'show_detail.dart';

void main() {
  runApp(const ViewListApp());
}

class ViewListApp extends StatelessWidget {
  const ViewListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scooter-CS SHOP',
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 30, 150, 206),
          foregroundColor: Colors.white,
        ),
      ),
      home: const MyHomePage(title: 'Scooter-CS SHOP'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemCount: ViewList.samples.length,
        itemBuilder: (context, index) {
          final item = ViewList.samples[index];
          return buildProductCard(item, context);
        },
      ),
    );
  }
}

Widget buildProductCard(ViewList recipe, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => ShowDetail(recipe: recipe)),
      );
    },
    child: Card(
      margin: const EdgeInsets.all(10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            recipe.imageUrl,
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              recipe.imgLable,
              style: GoogleFonts.kanit(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
