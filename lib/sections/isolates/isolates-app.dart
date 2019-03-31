import 'package:combine_mobile/sections/isolates/isolates-photo.dart';
import 'package:combine_mobile/sections/isolates/photo-grid.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'isolate-injector.dart';

class IsolatesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Injector.configure(DataType.PROD);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: IsolatesHomePage(),
    );
  }
}

class IsolatesHomePage extends StatefulWidget {
  @override
  _IsolatesHomePageState createState() => _IsolatesHomePageState();
}

class _IsolatesHomePageState extends State<IsolatesHomePage> {
  Injector injector;

  @override
  void initState() {
    super.initState();
    injector = Injector();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DI and Isolate Demo'),
      ),
      body: FutureBuilder<List<Photo>>(
        future: injector.photoRepo.fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
          }
          return snapshot.hasData
              ? PhotoGrid(photos: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
