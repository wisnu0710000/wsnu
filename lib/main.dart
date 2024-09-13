import 'package:flutter/material.dart';

void main() {
  runApp(SidangApp());
}

class SidangApp extends StatelessWidget {
  const SidangApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SidangScreen(),
    );
  }
}

class SidangScreen extends StatelessWidget {
  const SidangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'), // Ganti dengan asset background keren
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Semi-transparent overlay
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // Main Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Ucapan selamat telah sidang
                const Text(
                  'Selamat Telah Sidang!',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                // Ucapan untuk gebetan
                const Text(
                  'Dan buat gebetan tersayang,\n'
                  'Terima kasih sudah selalu mendukung!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 40),
                // Button keren
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFB7181), // Warna tombol keren
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Untuk Gebetan!'),
                        content: const Text('Kamu yang terbaik, terima kasih sudah ada buat aku! ❤️'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Terima Kasih'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text(
                    'Ucapkan Terima Kasih!',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
