import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _quotes = [
    'Your limitation—it’s only your imagination.',
    'Push yourself, because no one else is going to do it for you.',
    'Sometimes later becomes never. Do it now.',
    'Great things never come from comfort zones.',
    'Dream it. Wish it. Do it.',
    'Success doesn’t just find you. You have to go out and get it.',
    'The harder you work for something, the greater you’ll feel when you achieve it.',
    'Dream bigger. Do bigger.',
    'Don’t stop when you’re tired. Stop when you’re done.',
    'Wake up with determination. Go to bed with satisfaction.',
    'Do something today that your future self will thank you for.',
    'Little things make big days.',
    'It’s going to be hard, but hard does not mean impossible.',
    'Don’t wait for opportunity. Create it.',
    'Sometimes we’re tested not to show our weaknesses, but to discover our strengths.',
    'The key to success is to focus on goals, not obstacles.',
    'Dream it. Believe it. Build it.',
  ];

  String _generatedQuote = 'Click below to generate a new quote!';

  String _buttonText = 'New Quote';
  String _appTitle = 'Motivational Quotes';

  void _generateQuote() {
    int randomNumber = Random().nextInt(_quotes.length);

    setState(() {
      _generatedQuote = _quotes[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appTitle),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            Text(
              _generatedQuote,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            RaisedButton(
              child: Text(
                _buttonText,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.green,
              onPressed: _generateQuote,
            ),
          ],
        ),
      ),
    );
  }
}
