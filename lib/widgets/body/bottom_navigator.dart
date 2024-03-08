import 'package:flutter/material.dart';

class BottomNavigasiWidget extends StatelessWidget {
  const BottomNavigasiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenWidth = mediaQuery.size.width;
    double screenHeight = mediaQuery.size.height;
    return  Container(
          height: screenHeight * 0.1,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.home_filled,
                color: Colors.black,
                size: 30,
              ),
              Icon(
                Icons.favorite,
                color: Colors.black,
                size: 30,
              ),
              Icon(
                Icons.shopping_bag_rounded,
                color: Colors.black,
                size: 30,
              ),
              // ElevatedButton(
              //   onPressed: () {},
              //   child: Icon(Icons.grid_view_sharp, color: Colors.black),
              //   style: ElevatedButton.styleFrom(
              //     shape: CircleBorder(),
              //     padding: EdgeInsets.all(0),
              //     backgroundColor:
              //         Color.fromRGBO(205, 217, 113, 1), // <-- Button color
              //     foregroundColor: Colors.red, // <-- Splash color
              //   ),
              // ),
              GestureDetector(
                onTap: () {
                  // Aksi yang ingin dilakukan saat tombol ditekan
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(205, 217, 113, 1), // Warna tombol
                  ),
                  padding: EdgeInsets.all(3), // Sesuaikan dengan ukuran ikon
                  child: Icon(
                    Icons.grid_view_sharp,
                    color: Colors.black, // Warna ikon
                    size: 24, // Sesuaikan dengan ukuran ikon yang diinginkan
                  ),
                ),
              ),
              Icon(
                Icons.person_sharp,
                color: Colors.black,
                size: 30,
              ),
            ],
          ));
  }
}