import 'package:flutter/material.dart';

class DataPembeli extends StatelessWidget {
  const DataPembeli({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF052219),
        title: const Text(
          'Data Pembeli',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'Nunito',
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Cari nama pembeli',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildCustomerCard(
                    context,
                    imageUrl:
                        'https://randomuser.me/api/portraits/men/1.jpg',
                    name: 'Juan',
                    description: 'Teknologi Informasi',
                  ),
                  const SizedBox(height: 16),
                  _buildCustomerCard(
                    context,
                    imageUrl:
                        'https://randomuser.me/api/portraits/women/2.jpg',
                    name: 'Eve',
                    description: 'Informatika',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomerCard(
    BuildContext context, {
    required String imageUrl,
    required String name,
    required String description,
  }) {
    return Container(
      width: 279,
      height: 138,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Image.network(
                    imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Nunito',
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF8111E),
                    side: const BorderSide(color: Colors.black),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(9),
                      ),
                    ),
                  ),
                  onPressed: () {
                  },
                  child: const Text(
                    'Hapus',
                    style: TextStyle(
                      fontSize: 15, 
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(9),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/customer_detail');
                  },
                  child: const Text(
                    'Lihat',
                    style: TextStyle(
                      fontSize: 15, 
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}