import 'package:flutter/material.dart';
import 'basic_widgets/date_time_pickers.dart';
import 'basic_widgets/scaffolt_widget.dart';
import 'basic_widgets/dialog_widget.dart'; // Import dialog widget
import 'basic_widgets/input_selection_widget.dart'; // Import input selection widget

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDateTime()),
                );
              },
              child: const Text('Pilih Tanggal'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyScaffoldWidget()),
                );
              },
              child: const Text('Pilih Scaffold Widget'),
            ),
            const SizedBox(height: 20),
            // Button untuk navigasi ke Dialog Widget
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyLayout()), // Navigasi ke MyLayout dari dialog_widget.dart
                );
              },
              child: const Text('Tampilkan Dialog'),
            ),
            const SizedBox(height: 20),
            // Button untuk navigasi ke Input Selection Widget
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyInputWidget()), // Navigasi ke MyInputWidget dari input_selection_widget.dart
                );
              },
              child: const Text('Tampilkan Input Selection'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
