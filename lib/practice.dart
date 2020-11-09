// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: RandomWords());
//   }
// }

// class RandomWords extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return RandomWordsState();
//   }
// }

// class RandomWordsState extends State<RandomWords> {
//   // final _saved = Set<WordPair>();
//   final _suggestions = <WordPair>[];
//   final _biggerFont = TextStyle(fontSize: 20.0);
//   @override
//   Widget build(BuildContext cont) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Startup Name Generator'),
//         // actions: [IconButton(icon: Icon(Icons.list), onPressed: _pushSaved)],
//       ),
//       body: _buildSuggestions(),
//     );
//   }

//   void _pushSaved() {
//     Navigator.of(context)
//         .push(MaterialPageRoute<void>(builder: (BuildContext context) {
//       final tiles = _saved.map((WordPair pair) {
//         return ListTile(
//           title: Text(
//             pair.asPascalCase,
//             style: _biggerFont,
//           ),
//         );
//       });
//       final divided = ListTile.divideTiles(
//         context: context,
//         tiles: tiles,
//       ).toList();

//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Saves Suggestions'),
//         ),
//         body: ListView(children: divided),
//       );
//     }));
//   }

//   Widget _buildSuggestions() {
//     return ListView.builder(
//         physics: BouncingScrollPhysics(),
//         itemExtent: 50,
//         itemBuilder: (context, i) {
//           if (i.isOdd)
//             return Divider(); //A thin horizontal line, with padding on either side.
// final index = i ~/ 2;
// if (index >= _suggestions.length) {
//             _suggestions.addAll(generateWordPairs().take(20));
//           }
//           return _buildRow(_suggestions[index]);
//         });
//   }

//   Widget _buildRow(WordPair pair) {
//     final alreadySaved = _saved.contains(
//         pair); //Returns true if this string contains a match of other:
//     return ListTile(
//         title: Text(
//           pair.asPascalCase,
//           style: _biggerFont,
//         ),
//         trailing: Icon(
//           alreadySaved ? Icons.beenhere : Icons.beenhere_outlined,
//           color: alreadySaved ? Colors.green[300] : null,
//         ),
//         onTap: () {
//           setState(() {
//             if (alreadySaved) {
//               _saved.remove(pair);
//             } else {
//               _saved.add(pair);
//             }
//           });
//         });
//   }
// }
