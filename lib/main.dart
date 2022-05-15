import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          color: Colors.indigo[300],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TapDecrement(),
                _CounterWidgetState(),
                TapIncrement(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TapDecrement extends StatelessWidget {
  const TapDecrement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Tap "-" to decrement',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }
}

class _CounterWidgetState extends StatefulWidget {
  const _CounterWidgetState({Key? key}) : super(key: key);

  @override
  State<_CounterWidgetState> createState() => _CounterWidgetStateState();
}

class _CounterWidgetStateState extends State<_CounterWidgetState> {
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      if (_counter < 99) {
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 128.0, vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.indigo[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: _decrementCounter,
              child: const Text(
                '-',
                style: TextStyle(fontSize: 26, color: Colors.black),
              )),
          Text(
            '$_counter',
            style: const TextStyle(fontSize: 24),
          ),
          TextButton(
              onPressed: _incrementCounter,
              child: const Text(
                '+',
                style: TextStyle(fontSize: 26, color: Colors.black),
              )),
        ],
      ),
    );
  }
}

class TapIncrement extends StatelessWidget {
  const TapIncrement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Tap "+" to increment',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }
}
