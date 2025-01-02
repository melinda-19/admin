import 'package:flutter/material.dart';

class DetailPenjual extends StatelessWidget {
  const DetailPenjual({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF052219),
        title: const Text(
          'Detail Penjual',
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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Menu Penjualan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Nunito',
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.separated(
                    itemCount: 4,
                    separatorBuilder: (context, index) => const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    itemBuilder: (context, index) {
                      final menuData = [
                        {
                          'imageUrl':
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv3I9R727jqcWVSyzFEx1A8rLDE4LZ1UyY7Q&s',
                          'title': 'Nasi Rawon',
                          'price': 'Rp. 8000',
                        },
                        {
                          'imageUrl':
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkn0q-iSrLEjAKnh48JjpiF1l_Dzza88TfWA&s',
                          'title': 'Nasi Soto',
                          'price': 'Rp. 8000',
                        },
                        {
                          'imageUrl':
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQScsCAMxiS6YFgSw248Ny1EIpOYVez-4RAVw&s',
                          'title': 'Nasi Pecel',
                          'price': 'Rp. 8000',
                        },
                        {
                          'imageUrl':
                              'https://www.dapurkobe.co.id/wp-content/uploads/nasi-telur-sentosa.jpg',
                          'title': 'Nasi Telur',
                          'price': 'Rp. 8000',
                        },
                      ];

                      return _buildMenuItem(
                        imageUrl: menuData[index]['imageUrl']!,
                        title: menuData[index]['title']!,
                        price: menuData[index]['price']!,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/seller_profile');
              },
              icon: const Icon(Icons.person),
              label: const Text(
                'Profil',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Nunito',
                  ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF052219),
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required String imageUrl,
    required String title,
    required String price,
  }) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: Image.network(
            imageUrl,
            width: 61,
            height: 61,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Nunito',
                ),
              ),
              const SizedBox(height: 4),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontFamily: 'Nunito',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}