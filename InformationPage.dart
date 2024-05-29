import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  final String information;

  const InformationPage({Key? key, required this.information})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          information,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
