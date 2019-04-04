import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ScrollPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScrollPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScrollPage extends StatefulWidget {
  final String title = 'Infinite Scroll';

  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  List<String> dogImages = List();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    fetchFive();
    listenController();
  }

  void listenController() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchFive();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          controller: _scrollController,
          itemCount: dogImages.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                constraints: BoxConstraints.tightFor(height: 150),
                child: Image.network(
                  dogImages[index],
                  fit: BoxFit.fitWidth,
                ));
          }),
    );
  }

  fetch() async {
    final response = await http.get('https://dog.ceo/api/breeds/image/random');
    if (response.statusCode == 200) {
      setState(() {
        dogImages.add(json.decode(response.body)['message']);
      });
    } else {
      throw Exception('Failed to load images');
    }
  }

  void fetchFive() {
    for (int i = 0; i < 5; i++) {
      fetch();
    }
  }
}
