import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:python/screens/LandingScreen.dart';
import 'package:get/get.dart';

import 'package:python/screens/PinterestGrid.dart';
import 'package:python/screens/quiz/quiz_screen.dart';
import 'package:python/screens/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      //home: PinterestGrid(),
      getPages: [
        GetPage(name: '/', page: () => PinterestGrid()),
        GetPage(
            name: '/quiz', page: () => QuizScreen()) // Dynamic route
      ],//PinterestGrid()

    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     // _counter++;
      Get.toNamed('/quiz');
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /*appBar: AppBar(

        title: Text(widget.title),
      ),*/
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
