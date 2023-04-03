import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;

  void _simulateLoading() async {
    // Simulate loading by waiting for 3 seconds
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Test 1'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Test 2'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Test 3'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Test 4'),
                  ),
                ],
              ),
      ),
    );
  }
}
