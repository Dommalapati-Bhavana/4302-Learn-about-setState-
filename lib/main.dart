import 'package:flutter/material.dart';

void main() {
  runApp(const VisibilityToggleApp());
}

class VisibilityToggleApp extends StatelessWidget {
  const VisibilityToggleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Visibility of text',
      home: VisibilityToggleHomePage(),
    );
  }
}

class VisibilityToggleHomePage extends StatefulWidget {
  const VisibilityToggleHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VisibilityToggleHomePageState createState() =>
      _VisibilityToggleHomePageState();
}

class _VisibilityToggleHomePageState extends State<VisibilityToggleHomePage> {
  bool _isVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visibility Toggle App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _isVisible
                ? const Text(
                    'Hello, World!',
                    style: TextStyle(fontSize: 24.0),
                  )
                : Container(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleVisibility,
              child: Text(_isVisible ? 'Hide Text' : 'Show Text'),
            ),
          ],
        ),
      ),
    );
  }
}
