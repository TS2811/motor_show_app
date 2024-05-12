// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/home_ui.dart';

class ToyotaUI extends StatefulWidget {
  const ToyotaUI({super.key});

  @override
  State<ToyotaUI> createState() => _ToyotaUIState();
}

class _ToyotaUIState extends State<ToyotaUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 156, 13, 13),
        centerTitle: true,
        title: Text(
          'Toyota',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.height * 0.045,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 25.0,
            right: 25.0,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'รถเก๋ง',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.45,
                  child: ListView.builder(
                    itemCount: _showCar1.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeUI(
                                price: _price1[index],
                                carName: _nameCar1[index],
                                carShow: _showCar1[index],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: MediaQuery.of(context).size.width * 0.3,
                              child: Image.asset(
                                _showCar1[index],
                              ),
                            ),
                            Text(
                              _nameCar1[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                            Text(
                              'ราคา ${_price1[index]} บาท',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'รถ SUV & PPV',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.45,
                  child: ListView.builder(
                    itemCount: _showCar2.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeUI(
                                price: _price2[index],
                                carName: _nameCar2[index],
                                carShow: _showCar2[index],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: MediaQuery.of(context).size.width * 0.3,
                              child: Image.asset(
                                _showCar2[index],
                              ),
                            ),
                            Text(
                              _nameCar2[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                            Text(
                              'ราคา ${_price2[index]} บาท',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'รถMPV',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.45,
                  child: ListView.builder(
                    itemCount: _showCar3.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeUI(
                                price: _price3[index],
                                carName: _nameCar3[index],
                                carShow: _showCar3[index],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: MediaQuery.of(context).size.width * 0.3,
                              child: Image.asset(
                                _showCar3[index],
                              ),
                            ),
                            Text(
                              _nameCar3[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                            Text(
                              'ราคา ${_price3[index]} บาท',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'รถกระบะ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.45,
                  child: ListView.builder(
                    itemCount: _showCar4.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeUI(
                                price: _price4[index],
                                carName: _nameCar4[index],
                                carShow: _showCar4[index],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              _showCar4[index],
                              width: MediaQuery.of(context).size.width * 0.6,
                            ),
                            Text(
                              _nameCar4[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                            Text(
                              'ราคา ${_price4[index]} บาท',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'รถVan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.45,
                  child: ListView.builder(
                    itemCount: _showCar5.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeUI(
                                price: _price5[index],
                                carName: _nameCar5[index],
                                carShow: _showCar5[index],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              _showCar5[index],
                              width: MediaQuery.of(context).size.width * 0.6,
                            ),
                            Text(
                              _nameCar5[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                            Text(
                              'ราคา ${_price5[index]} บาท',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'รถBus',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.45,
                  child: ListView.builder(
                    itemCount: _showCar6.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeUI(
                                price: _price6[index],
                                carName: _nameCar6[index],
                                carShow: _showCar6[index],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              _showCar6[index],
                              width: MediaQuery.of(context).size.width * 0.6,
                            ),
                            Text(
                              _nameCar6[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                            Text(
                              'ราคา ${_price6[index]} บาท',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> _price1 = [
    '549000',
    '559000',
    '894000',
    '1129000',
    '1475000',
    '2949000',
    '5199000',
  ];
  List<String> _nameCar1 = [
    'Yaris ATIV',
    'Yaris',
    'Corolla Altis',
    'Corolla Altis GR Sport',
    'CAMRY',
    'GR 86',
    'GR Supra',
  ];
  List<String> _showCar1 = [
    'assets/images/t11.webp',
    'assets/images/t12.webp',
    'assets/images/t13.webp',
    'assets/images/t14.webp',
    'assets/images/t15.webp',
    'assets/images/t16.webp',
    'assets/images/t17.webp',
  ];
  List<String> _price2 = [
    '789000',
    '999000',
    '1254000',
    '1400000',
    '1643000',
    '1969000',
    '1836000',
  ];
  List<String> _nameCar2 = [
    'Yaris Cross',
    'Corolla Cross',
    'Corolla Altis',
    'Corolla Cross GR Sport',
    'Fortuner Leader',
    'Fortuner GR Sport',
    'bZ4X',
  ];
  List<String> _showCar2 = [
    'assets/images/t21.webp',
    'assets/images/t22.webp',
    'assets/images/t23.webp',
    'assets/images/t24.webp',
    'assets/images/t25.webp',
    'assets/images/t26.webp',
    'assets/images/t27.webp',
  ];
  List<String> _price3 = [
    '795000',
    '1379000',
    '4129000',
  ];
  List<String> _nameCar3 = [
    'Veloz',
    'Innova Zenix',
    'Alphard',
  ];
  List<String> _showCar3 = [
    'assets/images/t31.webp',
    'assets/images/t32.webp',
    'assets/images/t33.webp',
  ];
  List<String> _price4 = [
    '459000',
    '584000',
    '669000',
    '775000',
    '1006000',
    '934000',
  ];
  List<String> _nameCar4 = [
    'Hilux Champ',
    'Hilux Revo Standard Cab',
    'Hilux Revo Z Edition',
    'Hilux Revo Prerunner & 4x4',
    'Hilux Revo Rocco',
    'Hilux Revo GR Sport',
  ];
  List<String> _showCar4 = [
    'assets/images/t41.webp',
    'assets/images/t42.webp',
    'assets/images/t43.webp',
    'assets/images/t44.webp',
    'assets/images/t45.webp',
    'assets/images/t46.webp',
  ];
  List<String> _price5 = [
    '1069000',
    '1339000',
  ];
  List<String> _nameCar5 = [
    'Hiace',
    'Commuter',
  ];
  List<String> _showCar5 = [
    'assets/images/t51.webp',
    'assets/images/t52.webp',
  ];
  List<String> _price6 = [
    '1960000',
  ];
  List<String> _nameCar6 = [
    'Coaster',
  ];
  List<String> _showCar6 = [
    'assets/images/t61.webp',
    ];
}
