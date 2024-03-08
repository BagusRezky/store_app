import 'package:flutter/material.dart';
import 'package:store_app/styles/color_style.dart';
import 'package:store_app/styles/font_style.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5DCAD),
      body: SizedBox(
        height: 760,
        width: 370,
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
                    'Ananas',
                    style: GoogleTextStyle.fw700.copyWith(
                      fontSize: 30,
                      color: const Color(0xff3D5920),
                    ),
                  ),
                  const Row(
                    children: [
                      Image(
                        image: AssetImage('assets/pnp2.png'),
                        width: 60,
                        height: 70,
                      ),
                      Image(
                          image: AssetImage('assets/pnp3.png'),
                          width: 60,
                          height: 70),
                    ],
                  ),
                ],
              ),
            ),
            const Center(
              child: Image(
                image: AssetImage('assets/pineapple.png'),
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 260,
                  width: 356,
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
                      const Text('Description',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0B3128))),
                      const SizedBox(height: 5),
                      const Text(
                          'Pineapple is a tropical fruit that is rich in vitamins, enzymes and antioxidents. They may help boost the immune system, build strong bones and aid indigestion. Also, despite their sweetness, pineapples are low in calories.',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff0B3128))),
                      const SizedBox(height: 10),
                      const Text('Price',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3D5920))),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '11,000 DT',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff3D5920)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 7),
                            height: 15,
                            width: 61,
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 10,
                                ),
                                Text('(5.0)',
                                    style: TextStyle(
                                        fontSize: 5,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffABABAB))),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 40,
                        width: 290,
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
