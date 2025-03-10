import 'package:flutter/material.dart';

class KubusScreen extends StatefulWidget {
  const KubusScreen({Key? key}) : super(key: key);

  @override
  _KubusScreenState createState() => _KubusScreenState();
}

class _KubusScreenState extends State<KubusScreen> {
  final TextEditingController _sideController = TextEditingController();
  double _volume = 0.0;
  double _surfaceArea = 0.0;

  void _calculate() {
    double side = double.tryParse(_sideController.text) ?? 0;

    setState(() {
      _volume = side * side * side;
      _surfaceArea = 6 * (side * side);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kubus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _sideController,
              decoration: const InputDecoration(labelText: 'Panjang Sisi'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculate,
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 20),
            Text('Volume: $_volume'),
            Text('Keliling: $_surfaceArea'),
          ],
        ),
      ),
    );
  }
}
