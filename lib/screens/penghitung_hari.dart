import 'package:flutter/material.dart';

class PenghitungHariScreen extends StatefulWidget {
  const PenghitungHariScreen({Key? key}) : super(key: key);

  @override
  _PenghitungHariScreenState createState() => _PenghitungHariScreenState();
}

class _PenghitungHariScreenState extends State<PenghitungHariScreen> {
  final TextEditingController _controller = TextEditingController();
  String _result = "Masukkan angka 1-7";

  void _hitungHari() {
    int? angka = int.tryParse(_controller.text);

    if (angka == null || angka < 1 || angka > 7) {
      setState(() {
        _result = "Angka tidak valid! Masukkan angka 1-7.";
      });
      return;
    }

    List<String> hari = [
      "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"
    ];

    setState(() {
      _result = "Hari ke-$angka adalah ${hari[angka - 1]}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penghitung Hari'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Masukkan angka 1-7 untuk mengetahui nama hari:",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan angka",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _hitungHari,
              child: const Text("Tampilkan Hari"),
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
