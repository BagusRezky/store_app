import 'package:flutter/material.dart';
import 'package:store_app/detail_porduct.dart';
import 'package:store_app/etalase.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdukPage extends StatelessWidget {
  const ProdukPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenWidth = mediaQuery.size.width;
    double screenHeight = mediaQuery.size.height;
    return  Expanded(
              child: GridView.builder(
                itemCount: EtalasePage.buahs.length, // number of items in the grid
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of columns in the grid
                  mainAxisSpacing: 5.0, // spacing between rows
                ),
                itemBuilder: (BuildContext context, int index) {
                  // itemBuilder builds each item in the grid
                  return Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                    color: Colors.white10, // example color
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailProduct(
                      buah: EtalasePage.buahs[
                          index], // Mengirim data buah yang dipilih ke halaman detail produk
                    ),
                  ),
                );
                      },
                      child: Card(
                          shadowColor: Colors.grey,
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Center(
                                child: Image.asset(
                                  EtalasePage.buahs[index].foto,
                                  width: screenWidth * 0.2,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, left: 10),
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  'New',
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 12,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(205, 217, 113, 1)),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        EtalasePage.buahs[index].nama,
                                        style: GoogleFonts.josefinSans(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Text(
                                        'Rp.${EtalasePage.buahs[index].harga}',
                                        style: GoogleFonts.josefinSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  );
                },
              ),
            );
  }
}