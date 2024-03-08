import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store_app/widgets/appBar/cart.dart';
import 'package:store_app/widgets/appBar/notifikasi.dart';
import 'package:store_app/widgets/appBar/profile.dart';
import 'package:store_app/widgets/appBar/search.dart';
import 'package:store_app/widgets/appBar/square_grid.dart';
import 'package:store_app/widgets/body/bottom_navigator.dart';
import 'package:store_app/widgets/body/kategori.dart';
import 'package:store_app/widgets/body/produk.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/models/buah.dart';

class EtalasePage extends StatelessWidget {
  static final List<Buah> buahs = [
    Buah(
        nama: 'Pisang',
        keterangan: 'Buah yang kaya akan kalium',
        foto: 'assets/pisang.png',
        background: 'Color.fromRGBO(240, 247, 151, 1)',
        harga: 17000),
    Buah(
        nama: 'Semangka',
        keterangan: 'Buah dengan kadar air tinggi',
        foto: 'assets/semangka.png',
        background: 'Color.fromRGBO(134, 206, 99, 1)',
        harga: 21000),
    Buah(
        nama: 'Mangga',
        keterangan: 'Buah tropis yang manis dan lezat',
        foto: 'assets/mangga.png',
        background: 'Color.fromRGBO(255, 210, 192, 1)',
        harga: 19000),
    Buah(
        nama: 'Alpukat',
        keterangan: 'Buah yang kaya akan kalium',
        foto: 'assets/avocado.png',
        background: 'Color.fromRGBO(213, 235, 187, 1)',
        harga: 19000),
    Buah(
        nama: 'Nanas',
        keterangan: 'Buah dengan kadar air tinggi',
        foto: 'assets/pineapple.png',
        background: 'Color.fromRGBO(245, 220, 173, 1)',
        harga: 23000),
    Buah(
        nama: 'Kiwi',
        keterangan: 'Buah tropis yang manis dan lezat',
        foto: 'assets/kiwi.png',
        background: 'Color.fromRGBO(187, 207, 110, 1)',
        harga: 22000),
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenWidth = mediaQuery.size.width;
    double screenHeight = mediaQuery.size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 248, 1),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: screenWidth * 0.04,
                right: screenWidth * 0.04,
                bottom: screenHeight * 0.01,
                top: screenHeight * 0.025,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SquareWidget(),
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: Text(
                      'Produk',
                      style: GoogleFonts.josefinSans(
                        color: Color.fromRGBO(11, 49, 40, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  NotifWidget(),
                  SearchWidget(),
                  CartWidget(),
                  ProfileWidget()
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.02,
                  horizontal: screenWidth * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth * 0.45,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color.fromRGBO(61, 89, 32, 1)),
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.layers_sharp,
                          color: Colors.white,
                          size: 14,
                        ),
                        label: Text(
                          'All Products',
                          style: GoogleFonts.josefinSans(
                              color: Colors.white, fontSize: 14),
                        )),
                  ),
                  Container(
                    width: screenWidth * 0.45,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color.fromRGBO(61, 89, 32, 1)),
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.grid_view_rounded,
                          color: Colors.white,
                          size: 14,
                        ),
                        label: Text(
                          'All Category',
                          style: GoogleFonts.josefinSans(
                              color: Colors.white, fontSize: 14),
                        )),
                  ),
                ],
              ),
            ),
            KategoriWidget(),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.02,
                  horizontal: screenWidth * 0.04),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'Popular',
                    style: GoogleFonts.josefinSans(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  )),
                  Text(
                    'View all',
                    style: GoogleFonts.josefinSans(
                        fontSize: 12, color: Colors.black26),
                  )
                ],
              ),
            ),
            // InkWell(
            //   onTap: () {},
            //   child: Card(
            //     child: ListTile(
            //       title: Text(buahs[1].nama),
            //       subtitle: Text(buahs[1].keterangan),
            //       leading: Image.asset(buahs[1].foto),
            //     ),
            //   ),
            // ),
            // InkWell(
            //   onTap: () {},
            //   child: Card(
            //     child: ListTile(
            //       title: Text(buahs[2].nama),
            //       subtitle: Text(buahs[2].keterangan),
            //       leading: Image.asset(buahs[2].foto),
            //     ),
            //   ),
            // )
            ProdukPage()
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigasiWidget(),
    );
  }
}
