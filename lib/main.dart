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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  String _setring = "";
  String _warmWelcoming = "Number Input Button by PAB ~_^";

  void _setSetring(String harusSetring) {
    setState(() {
      _setring = _setring + harusSetring;
    });
  }

  void _clearAllSetring() {
    setState(() {
      _setring = "";
    });
  }

  void _setWarmWelcoming() {
    setState(() {
      _warmWelcoming = _setring;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [Text("Layout5"), Text("NBI")],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_warmWelcoming),
            Container(height: 50),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black,
                    height: 50,
                    child: Center(
                      child: Text(
                        _setring,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _setSetring("1");
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50)),
                    child: const Text("1")),
                ElevatedButton(
                    onPressed: () {
                      _setSetring("2");
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50)),
                    child: const Text("2")),
                ElevatedButton(
                    onPressed: () {
                      _setSetring("3");
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50)),
                    child: const Text("3")),
              ],
            ),
            Container(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _setSetring("4");
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50)),
                    child: const Text("4")),
                ElevatedButton(
                    onPressed: () {
                      _setSetring("5");
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50)),
                    child: const Text("5")),
                ElevatedButton(
                    onPressed: () {
                      _setSetring("6");
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50)),
                    child: const Text("6")),
              ],
            ),
            Container(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _setSetring("7");
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50)),
                    child: const Text("7")),
                ElevatedButton(
                    onPressed: () {
                      _setSetring("8");
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50)),
                    child: const Text("8")),
                ElevatedButton(
                    onPressed: () {
                      _setSetring("9");
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50)),
                    child: const Text("9")),
              ],
            ),
            Container(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _clearAllSetring();
                  },
                  style:
                      ElevatedButton.styleFrom(fixedSize: const Size(100, 50)),
                  child: const Text("Clear"),
                ),
                ElevatedButton(
                    onPressed: () {
                      _setSetring("0");
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50)),
                    child: const Text("0")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if ((_setring != null) && (_setring.length > 0)) {
                          _setring = _setring.substring(0, _setring.length - 1);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50)),
                    child: const Text("del")),
              ],
            ),
            Container(
              height: 20,
            ),
            IconButton(
              icon: const Icon(Icons.print),
              onPressed: () {
                _setWarmWelcoming();
              },
              style: IconButton.styleFrom(
                  fixedSize: const Size(100, 50),
                  backgroundColor: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
