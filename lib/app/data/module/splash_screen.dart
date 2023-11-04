import 'package:absensi/app/data/module/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Atur durasi tampilan splash screen sebelum pindah ke layar utama
    Future.delayed(const Duration(seconds: 5), () {
      // Navigasi ke layar utama aplikasi atau halaman yang diinginkan
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Welcome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Tampilkan gambar splash di tengah layar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/man.png'),
            const SizedBox(height: 20,),
            const CircularProgressIndicator()
          ],
        ),

      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: const Center(
        child: Text('Halaman Utama Aplikasi'),
      ),
    );
  }
}