import 'package:flutter/material.dart';
import 'package:hw_viewlist/itemDetail.dart';
import './model/viewList.dart';

void main() {
  runApp(const sc_Shop());
}

class sc_Shop extends StatelessWidget {
  const sc_Shop({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 52, 29, 255),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      home: const MyHomePage(title: 'CS_Scooter'),
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
        child: Container(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  print('You tapped on ${ViewList.samples[index].imgLable}');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Itemdetail(samples: ViewList.samples[index]);
                      },
                    ),
                  );
                },
                child: buildRecipeCard(ViewList.samples[index]),
              );
            },
            itemCount: ViewList.samples.length,
          ),
        ),
      ),
    );
  }

  Widget buildRecipeCard(ViewList recipe) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imgUrl)),
            const SizedBox(height: 10),
            Text(
              recipe.imgLable,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
