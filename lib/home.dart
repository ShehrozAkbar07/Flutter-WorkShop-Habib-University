import 'package:flutter/material.dart';

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

  TextEditingController value = TextEditingController();
  List<String> users = [
    'Sheheroz',
    'hamza',
    'aalaudin',
    'nabeel',
  ];
  // List<String> sir_name = [
  //   'Sheheroz',
  //   'hamza',
  //   'aalaudin',
  //   'nabeel',
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            TextFormField(
              controller: value,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2))),
            ),
            TextFormField(
              controller: value,
            ),
            ElevatedButton(
                onPressed: () {
                  print(value.text);
                },
                child: Text('Add'))
          ],
        ),
      ),
      // body: Center(
      //     child: ListView(
      //   children: users
      //       .map((e) => ListTile(
      //             title: Text(e),
      //             subtitle: Text(e),
      //           ))
      //       .toList(),
      // )),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //       const ListTile(
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.red,
      //         ),
      //         trailing: Icon(Icons.abc),
      //         title: Text('ABs'),
      //         subtitle: Text('abb'),
      //       )
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
