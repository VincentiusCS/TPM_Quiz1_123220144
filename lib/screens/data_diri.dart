import 'package:flutter/material.dart';

class DataDiriScreen extends StatefulWidget {
  const DataDiriScreen({Key? key}) : super(key: key);

  @override
  _DataDiriScreenState createState() => _DataDiriScreenState();
}

class _DataDiriScreenState extends State<DataDiriScreen> {
  String _photoUrl = 'assets/Foto_VincentiusChristianSugianto.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Diri'),
      ),
      body: Center(
        // Menengahkan seluruh konten
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Menengahkan vertikal
            crossAxisAlignment:
                CrossAxisAlignment.center, // Menengahkan horizontal
            children: [
              const Text('NIM: 123220144'),
              const Text('Nama: Vincentius Christian Sugianto'),
              const Text('Kelas: IF-B'),
              const Text('Hobby: Taekwondo'),
              const SizedBox(height: 20),
              const Text('Photo:'),
              Image.asset(
                _photoUrl,
                height: 100,
                errorBuilder: (context, error, stackTrace) {
                  return const Text('Gambar tidak ditemukan');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
