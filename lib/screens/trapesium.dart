import 'package:flutter/material.dart';
import 'dart:math';

class TrapesiumScreen extends StatefulWidget {
  const TrapesiumScreen({Key? key}) : super(key: key);

  @override
  _TrapesiumScreenState createState() => _TrapesiumScreenState();
}

class _TrapesiumScreenState extends State<TrapesiumScreen> {
  final TextEditingController _base1Controller = TextEditingController();
  final TextEditingController _base2Controller = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  double _area = 0.0;
  double _perimeter = 0.0;

  void _calculate() {
    double base1 = double.tryParse(_base1Controller.text) ?? 0;
    double base2 = double.tryParse(_base2Controller.text) ?? 0;
    double height = double.tryParse(_heightController.text) ?? 0;

    setState(() {
      _area = 0.5 * (base1 + base2) * height;

      double side = sqrt(pow((base2 - base1) / 2, 2) + pow(height, 2));

      _perimeter = base1 + base2 + (2 * side);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trapesium'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _base1Controller,
              decoration: const InputDecoration(labelText: 'Atas'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _base2Controller,
              decoration: const InputDecoration(labelText: 'Bawah'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _heightController,
              decoration: const InputDecoration(labelText: 'Tinggi'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculate,
              child: const Text('Hitung'),
            ),
            const SizedBox(height: 20),
            Text('Luas: $_area'),
            Text('Keliling: $_perimeter'),
          ],
        ),
      ),
    );
  }
}
