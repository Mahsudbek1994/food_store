import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // 1
  @override
  Widget build(BuildContext context) {
// 2
    final ThemeData theme = ThemeData();
// 3
    return MaterialApp(
      debugShowCheckedModeBanner: false,
// 4
      title: 'Recipe Calculator',
// 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.orange,
          secondary: Colors.blueAccent,
        ),
      ),
// 6
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
// 1
    return Scaffold(
// 2
      appBar: AppBar(
        title: Text(widget.title),
      ),
// 3
      body: SafeArea(
// TODO: Replace child: Container()
// 4
        child: ListView.builder(
// 5
          itemCount: Recipe.samples.length,
// 6
          itemBuilder: (BuildContext context, int index) {
// 7
// TODO: Update to return Recipe card
// 7
            return GestureDetector(
// 8
              onTap: () {
// 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
// 10
// TODO: Replace return with return RecipeDetail()
                      return RecipeDetail(recipe: Recipe.samples[index]);
                      // return Text('Detail page');
                    },
                  ),
                );
              },
// 11
              child: buildRecipeCard(Recipe.samples[index]),
            );
// TODO: Add GestureDetector
//   return buildRecipeCard(Recipe.samples[index]);
// return Text(Recipe.samples[index].label);
          },
        ),
        // child: Container(),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
// 1
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      //4
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        //4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
// 5
            const SizedBox(
              height: 14.0,
            ),
            //6
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Platino',
              ),
            ),
          ],

        ),
      ),
    );
  }
// TODO: Add buildRecipeCard() here
}