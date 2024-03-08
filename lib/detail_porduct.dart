import 'package:flutter/material.dart';
import 'package:store_app/models/buah.dart';
import 'package:store_app/styles/color_style.dart';
import 'package:store_app/styles/font_style.dart';

class DetailProduct extends StatelessWidget {
  final Buah buah; // Tambahkan properti untuk menerima data buah

  const DetailProduct({Key? key, required this.buah}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5DCAD),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 33, top: 37, right: 33, bottom: 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 34,
                    width: 34,
                    padding: const EdgeInsets.only(
                      right: 10,
                      bottom: 5,
                    ),
                    decoration: BoxDecoration(
                      color: ColorStyle.greenlight,
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back, size: 17),
                    ),
                  ),
                  Text(
                    'Detail Product',
                    style: GoogleTextStyle.fw700.copyWith(
                      fontSize: 20,
                      color: const Color(0xff0B3128),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.only(left: 33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    buah.nama,
                    style: GoogleTextStyle.fw700.copyWith(
                      fontSize: 30,
                      color: const Color(0xff3D5920),
                    ),
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage(buah.foto),
                        width: 60,
                        height: 70,
                      ),
                      const SizedBox(width: 10),
                      Image(
                        image: AssetImage(buah.foto),
                        width: 60,
                        height: 70,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Image(
                image: AssetImage(buah.foto),
                width: 230,
                // height: 200,
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 300,
                  padding: const EdgeInsets.only(top: 25, left: 33, right: 33),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: GoogleTextStyle.fw800.copyWith(
                          fontSize: 24,
                          color: ColorStyle.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Fruits is a tropical fruit that is rich in vitamins, enzymes and antioxidents. They may help boost the immune system, build strong bones and aid indigestion. Also, despite their sweetness, pineapples are low in calories.',
                        style: GoogleTextStyle.fw400.copyWith(
                          fontSize: 12,
                          color: const Color(0xffABABAB),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Price',
                        style: GoogleTextStyle.fw600.copyWith(
                          fontSize: 18,
                          color: ColorStyle.black,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp.${buah.harga}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: ColorStyle.black,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 7),
                            height: 15,
                            width: 120,
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '(5.0)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffABABAB),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff3D5920)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.card_travel,
                                color: Color(0xff3D5920),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Add to Cart',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff3D5920)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
