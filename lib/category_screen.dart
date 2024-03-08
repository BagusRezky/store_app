import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store_app/styles/font_style.dart';
import 'package:store_app/styles/color_style.dart';
import 'package:store_app/components/left_cart.dart';
import 'package:store_app/components/right_cart.dart';
import 'package:store_app/etalase.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/sidebar.png',
                      height: 50,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Category',
                      style: GoogleTextStyle.fw600.copyWith(
                        fontSize: 24,
                        color: ColorStyle.black,
                      ),
                    ),
                    const SizedBox(width: 40),
                    Image.asset(
                      'assets/notif.png',
                      height: 40,
                    ),
                    Image.asset(
                      'assets/search.png',
                      height: 40,
                    ),
                    Image.asset(
                      'assets/pannier.png',
                      height: 40,
                    ),
                    Image.asset(
                      'assets/profil.png',
                      height: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                width: 350,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 100,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorStyle.bgCart,
                        ),
                      ),
                    ),

                    // Add the image wrapped with Positioned widget
                    Positioned(
                      top: -10,
                      right: 0,
                      child: Image.asset(
                        'assets/pineapple2.png',
                        height: 130,
                      ),
                    ),

                    Positioned(
                      top: 35,
                      left: 15,
                      child: Text(
                        "Juicy and refreshing pineapple,",
                        style: GoogleTextStyle.fw800.copyWith(
                          color: ColorStyle.textCart,
                          fontSize: 12,
                        ),
                      ),
                    ),

                    Positioned(
                      top: 55,
                      left: 15,
                      child: Text(
                        "a tropical explosion of flavors in one bite.",
                        style: GoogleTextStyle.fw500.copyWith(
                          color: ColorStyle.textCart,
                          fontSize: 12,
                        ),
                      ),
                    ),

                    Positioned(
                      top: 85,
                      left: 15,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EtalasePage()),
                          );
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: ColorStyle.greendark,
                          ),
                          padding: const EdgeInsets.all(4),
                          child: Center(
                            child: Text(
                              "Shop now",
                              style: GoogleTextStyle.fw400.copyWith(
                                color: ColorStyle.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // text "please select a category"
              Center(
                child: Text(
                  "Please select a category",
                  style: GoogleTextStyle.fw500.copyWith(
                    color: ColorStyle.black,
                    fontSize: 14,
                  ),
                ),
              ),

              // list of box categories
              Padding(
                padding: EdgeInsets.only(top: 10, left: 28, right: 28),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LeftCart(
                          name: 'Mango',
                          type: 'Fruit',
                          image: 'assets/manggo.png',
                          color: Color(
                            int.parse('0xFFF5DCAD'),
                          ),
                        ),
                        RightCart(
                          name: 'Banana',
                          type: 'Fruit',
                          image: 'assets/banana.png',
                          color: Color(
                            int.parse('0xFFF8D9DF'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LeftCart(
                          name: 'Avocado',
                          type: 'Fruit',
                          image: 'assets/avocado.png',
                          color: Color(
                            int.parse('0xFFD5EBBB'),
                          ),
                        ),
                        RightCart(
                          name: 'Kiwi',
                          type: 'Fruit',
                          image: 'assets/kiwi.png',
                          color: Color(
                            int.parse('0xFFFFD2C0'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LeftCart(
                          name: 'Pineapple',
                          type: 'Fruit',
                          image: 'assets/kiwi.png',
                          color: Color(
                            int.parse('0xFFF3E0A3'),
                          ),
                        ),
                        RightCart(
                          name: 'Markisa',
                          type: 'Fruit',
                          image: 'assets/markisa.png',
                          color: Color(
                            int.parse('0xFFF0EDC1'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LeftCart(
                          name: 'Mango',
                          type: 'Fruit',
                          image: 'assets/manggo.png',
                          color: Color(
                            int.parse('0xFFD5EBBB'),
                          ),
                        ),
                        RightCart(
                          name: 'Markisa',
                          type: 'Fruit',
                          image: 'assets/markisa.png',
                          color: Color(
                            int.parse('0xFFFFD2C0'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
