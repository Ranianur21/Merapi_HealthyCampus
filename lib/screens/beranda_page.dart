import 'package:flutter/material.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F5E9),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header dengan nama dan notifikasi
              Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'Halo, Sarah!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications_none),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Kartu Aktivitas
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.directions_walk, size: 20),
                        SizedBox(width: 8),
                        Text(
                          'Aktivitas Hari Ini',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        // Circular step progress (dummy)
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CircularProgressIndicator(
                                value: 0.5,
                                strokeWidth: 8,
                                backgroundColor: Colors.grey.shade300,
                                color: const Color(0xFF5C8853),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '500',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    '1.000 Langkah',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              _ActivityInfo(
                                icon: Icons.map,
                                label: 'Jarak',
                                value: '0,38 km',
                              ),
                              _ActivityInfo(
                                icon: Icons.local_fire_department,
                                label: 'Kalori',
                                value: '22 kkal',
                              ),
                              _ActivityInfo(
                                icon: Icons.access_time,
                                label: 'Durasi',
                                value: '6 menit',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Artikel
              const Text(
                'Artikel',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),

              _buildArticleCard(
                image: 'assets/images/stress.png',
                title: 'Cara Mengurangi Stress Mahasiswa',
              ),
              _buildArticleCard(
                image: 'assets/images/brokoli.png',
                title: 'Keuntungan Makan Brokoli Bagi Kesehatan',
              ),
              _buildArticleCard(
                image: 'assets/images/sport.png',
                title: 'Menyeimbangkan Olahraga dan Kuliah',
              ),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Lihat Lebih',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF5C8853),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Tantangan'),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Makanan Sehat',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }

  Widget _buildArticleCard({required String image, required String title}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Image.asset(image, width: 48, height: 48),
        title: Text(title, style: const TextStyle(fontSize: 14)),
        subtitle: const Text(
          'Baca Sekarang',
          style: TextStyle(color: Colors.redAccent),
        ),
        onTap: () {},
      ),
    );
  }
}

class _ActivityInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _ActivityInfo({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.black54),
          const SizedBox(width: 8),
          Text('$value', style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
