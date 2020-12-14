import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 1',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Руслан Гирський, ТІ-72'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Student {
      String _name;
      int _age;

      Student(this._name, [this._age]);

      Student.vasya() {
        _name = "Вася";
        _age = 20;
  }

  // ignore: unnecessary_getters_setters
  set name(String val) => _name = val;
  // ignore: unnecessary_getters_setters
  String get name => _name;

  // ignore: unnecessary_getters_setters
  set age(int val) => _age = val;
  // ignore: unnecessary_getters_setters
  int get age => _age;
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Student> _students = [Student("Никита", 21), Student("Руслан", 19), Student("Максим"), Student("Саша", 18), Student.vasya()];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Вы нажали на кнопку столько раз:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Привет, ${_students[_counter % _students.length]._name}! Тебе '
                  '${_students[_counter % _students.length]._age ??
                  "непонятно сколько"} лет.\n Как дела?',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}