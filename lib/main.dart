import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Regita : Hello World'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//Percobaan 1 : Menambahkan Kondisi
//Percobaan 2 : Menampilkan Bilangan Ganjil atau Genap

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 1;
//   String _text = "Ganjil";
//
//   void _incrementCounter() {
//     setState(() {
//
//       _counter++;
//       if (_counter > 10) {
//         _counter = 1;
//       }
//       if (_counter % 2 == 0) {
//         _text = "Genap";
//       } else {
//         _text = "Ganjil";
//       }
//     });
// }

//Percobaan 3 : Menampilkan bilangan ganjil mulai dari 1 sampai n
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 1;
//   String _text = "Ganjil";
//
//   void _incrementCounter() {
//     setState(() {
//     _counter++;
//     if(_counter>10){
//       _counter = 0;
//     }
//     _text = "Ganjil: ";
//     for(int i=0; i<=_counter; i++){
//       if(i%2 !=0){
//         _text += '${i}, ';
//       }
//     }
//     });
//   }

//Latihan Buat program untuk menampilkan bilangan genap kelipatan 3 mulai dari 1 sampai n!
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   String _text = "Genap Kelipatan 3 :";
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//       if(_counter>50){
//         _counter = 0;
//       }
//       _text = "Genap Kelipatan 3 : ";
//       for(int i=1; i<=_counter; i++){
//         if(i%3 == 0){
//           if(i%2 == 0) {
//             _text += '${i}, ';
//           }
//         }
//       }
//     });
//   }

//Tugas Buatlah program untuk menampilkan bilangan prima mulai dari 1 sampai n!
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _text = " ";

  void _incrementCounter() {
    setState(() {
      //Tugas
      _counter++;
      int a = 0;
      if(_counter>50){
        _counter = 1;
      }
      _text = "Bilangan Prima : ";
        for (int i = 2; i <= _counter; i++) {
          //if (_counter % i == 0) {
          a = 0;
          for (int j = 1; j <= i; j++) {
            if (i % j == 0) {
              a++;
            }
          }
          if (a == 2) {
            //print(i);
            _text += '${i}, ';
          }

            // else{
            //   _text = "Bukan Bilangan Prima ";
            // }

        }
    });
  }

  //Percobaan 2 : Menampilkan Bilangan Ganjil atau Genap
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
