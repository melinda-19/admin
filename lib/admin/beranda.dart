import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  bool _isMenuVisible = false;

  void _toggleMenu() {
    setState(() {
      _isMenuVisible = !_isMenuVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo.png'),
            backgroundColor: Color(0xFF5DAA80),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: _toggleMenu,
          ),
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -0.4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildStatCard('Total Penjual', '5'),
                const SizedBox(height: 20),
                _buildStatCard('Total Pembeli', '167'),
              ],
            ),
          ),
          if (_isMenuVisible)
            Positioned(
              top: 0,
              right: 8,
              child: Container(
                width: 206,
                height: 367,
                decoration: BoxDecoration(
                  color: const Color(0xFF052219),
                  borderRadius: BorderRadius.circular(14),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kelola Data',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito',
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildCenteredButton('Data Penjual', () {
                      Navigator.pushNamed(context, '/seller_data');
                    }),
                    const SizedBox(height: 8),
                    _buildCenteredButton('Data Pembeli', () {
                       Navigator.pushNamed(context, '/customer_data');
                    }),
                    const SizedBox(height: 8),
                    _buildCenteredButton('Persetujuan', () {
                       Navigator.pushNamed(context, '/approval');
                    }, showRedDot: true),
                    const Spacer(),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/masuk');
                      },
                      icon: const Icon(Icons.logout, color: Colors.white),
                      label: const Text(
                        'Keluar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String count) {
    return Container(
      width: 207,
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(93, 170, 128, 0.41),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontFamily: 'Nunito',
            ),
          ),
          const Spacer(),
          Center(
            child: Text(
              count,
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Nunito',
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildCenteredButton(String label, VoidCallback onPressed,
    {bool showRedDot = false}) {
  return Stack(
    children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 35),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      if (showRedDot)
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
        ),
    ],
  );
}
}
