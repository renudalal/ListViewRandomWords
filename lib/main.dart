import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RandomWords());
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext cont) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, items) {
          print('Item value is $items');
          if (items <= _suggestions.length)
            _suggestions.addAll(generateWordPairs().take(10));
          return ListTile(
            title: Text(
              '${_suggestions[items]}',
              style: _biggerFont,
            ),
            trailing: Icon(
              Icons.favorite_border_outlined,
              color: Colors.red[300],
            ),
          );
        });
  }
}
