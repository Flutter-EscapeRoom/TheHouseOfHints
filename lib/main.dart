import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Escape Room',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'The House of Hints'),
      debugShowCheckedModeBanner: false,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  /*void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }*/

  void _exponentCounter() {
    setState(() {
      //pow(_counter,2) ;
      _counter=(_counter * _counter);
    });
  }
  void _resetCounter() {
    setState(() => _counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),*/
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.pinkAccent, Colors.deepPurpleAccent, ])),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //height: 300,
                width: 400,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 50),
                        const Text(
                          'Welcome to ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'House of Hints!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(height: 150),
                        Row(
                          children: [
                            const Text(

                              'Increment:',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)
                            ),
                            Text(
                              '$_counter',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                        /*Row(
                          children: [
                            const Text(
                              'Decrement:',
                            ),
                            Text(
                              '$_counter',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),*/
                        const SizedBox(height: 50),
                        Row(
                          children: [
                            const Text(
                              'Power:',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)
                            ),
                            Text(
                              '$_counter',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Container(
              child: FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ),
            Expanded(
              child: Row(),
            ),
            /*Container(
              child: FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ),*/
            Container(
              child: FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: _exponentCounter,
                //tooltip: 'Decrement',
                child: Text('**'),
              ),
            ),
            Expanded(
              child: Row(),
            ),
            Container(
              child: FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: _resetCounter,
                //tooltip: 'Decrement',
                child: Text('reset'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
