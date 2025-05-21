import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthy Campus',
      debugShowCheckedModeBanner: false,
      home: const SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEALTHY',
                        style: TextStyle(
                          fontFamily: 'SairaSemiCondensed',
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'CAMPUS',
                        style: TextStyle(
                          fontFamily: 'SairaSemiCondensed',
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Buat Akun',
                style: TextStyle(
                  fontFamily: 'SairaSemiCondensed',
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF5C8853),
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Halo! masuk untuk melanjutkan',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 24),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Nama pengguna',
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Kata sandi',
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Konfirmasi Kata sandi',
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    // Menampilkan snackbar sukses
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Pendaftaran Berhasil'),
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 2),
                      ),
                    );

                    // Menunda ke halaman login
                    Future.delayed(const Duration(seconds: 2), () {
                      if (mounted) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7A9E7E),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 4,
                  ),
                  child: const Text('Daftar', style: TextStyle(fontSize: 16)),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sudah punya akun?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text('Masuk'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Center(child: Text('Atau lanjutkan dengan')),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialButton('assets/images/email.png'),
                  const SizedBox(width: 16),
                  _buildSocialButton('assets/images/google.png'),
                  const SizedBox(width: 16),
                  _buildSocialButton('assets/images/facebook.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(String assetPath) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(assetPath, width: 24, height: 24),
      ),
    );
  }
}
