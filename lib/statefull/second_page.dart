import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({
    Key? key,
    required this.san,
  }) : super(key: key);

  int san;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void decrement() {
    setState(() {});
    widget.san--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${widget.san}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, widget.san);
              },
              child: const Text('Back'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: decrement,
        child: const Icon(Icons.remove),
      ),
    );
  }
}
