import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 183, 58, 58)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '@alyalaunn'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Fungsi untuk menambah counter setiap kali tombol ditekan
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    
    // Navigasi ke halaman berikut setelah tombol ditekan
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(counter: _counter), // Kirim nilai counter ke halaman berikutnya
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _incrementCounter, // Tombol untuk meningkatkan counter
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Memperbesar tombol
            textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Ukuran teks lebih besar & tebal
          ),
          child: const Text('KLIK'), // Teks di tombol
        ),
      ),
    );
  }
}

// Halaman baru yang menampilkan hasil counter
class ResultPage extends StatelessWidget {
  final int counter;

  const ResultPage({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Paling cantik kok',
              style: TextStyle(
                fontSize: 32, // Memperbesar ukuran teks
                fontWeight: FontWeight.bold, // Menebalkan teks
              ),
            ),
          ],
        ),
      ),
    );
  }
}
