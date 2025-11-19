import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football FunkoPop Shop',
      theme: ThemeData(
        // Menggunakan Color Scheme untuk tema yang lebih modern
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Football FunkoPop Shop',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo, // Warna AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Memberi jarak di semua sisi
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Menengahkan secara vertikal
            children: <Widget>[
              const Text(
                'Welcome to your Football Funko Collection!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30), // Jarak antar elemen
              // --- Tombol 1: All Products (Biru) ---
              ItemHomepage(
                title: "All Products",
                icon: Icons.list_alt_rounded,
                color: Colors.blue,
                onTap: () {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Kamu telah menekan tombol All Products!",
                        ),
                      ),
                    );
                },
              ),

              const SizedBox(height: 15), // Jarak antar tombol
              // --- Tombol 2: My Products (Hijau) ---
              ItemHomepage(
                title: "My Products",
                icon: Icons.inventory_2_rounded,
                color: Colors.green,
                onTap: () {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text("Kamu telah menekan tombol My Products!"),
                      ),
                    );
                },
              ),

              const SizedBox(height: 15), // Jarak antar tombol
              // --- Tombol 3: Create Product (Merah) ---
              ItemHomepage(
                title: "Create Product",
                icon: Icons.add_shopping_cart_rounded,
                color: Colors.red,
                onTap: () {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Kamu telah menekan tombol Create Product!",
                        ),
                      ),
                    );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// --- Widget Kustom untuk Tombol ---
// Agar kodenya rapi dan tidak berulang-ulang (DRY Principle)
class ItemHomepage extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const ItemHomepage({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(12), // Sudut membulat
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity, // Tombol melebar penuh
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
