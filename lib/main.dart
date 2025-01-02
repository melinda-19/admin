import 'package:flutter/material.dart';
import 'admin/splash.dart';
import 'admin/masuk.dart';
import 'admin/beranda.dart';
import 'admin/data_penjual.dart';
import 'admin/detail_penjual.dart';
import 'admin/profil_penjual.dart';
import 'admin/data_pembeli.dart';
import 'admin/detail_pembeli.dart';
import 'admin/persetujuan.dart';
import 'admin/detail_persetujuan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      routes: {
        '/masuk': (context) => const Masuk(),
        '/beranda': (context) => const Beranda(),
        '/seller_data': (context) => const DataPenjual(),
        '/customer_data': (context) => const DataPembeli(),
        '/seller_detail': (context) => const DetailPenjual(),
        '/seller_profile' : (context) => const ProfilPenjual(),
        '/customer_detail' : (context) => const DetailPembeli(),
        '/approval' : (context) => const Persetujuan(),
        '/approval_detail' : (context) => const DetailPersetujuan(),
      },
    );
  }
}