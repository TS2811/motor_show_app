// ignore_for_file: prefer_const_constructors, prefer_final_fields, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/home_ui.dart';

class MazdaUI extends StatefulWidget {
  const MazdaUI({super.key});

  @override
  State<MazdaUI> createState() => _MazdaUIState();
}

class _MazdaUIState extends State<MazdaUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 156, 13, 13),
        centerTitle: true,
        title: Text(
          'MazdaS',
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
                              padding: EdgeInsets.only(
                                left: 5.0,
                                right: 5.0,
                              ),
                              width: MediaQuery.of(context).size.width * 0.5,
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
                                    MediaQuery.of(context).size.width * 0.04,
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
                              padding: EdgeInsets.only(
                                left: 5.0,
                                right: 5.0,
                              ),
                              width: MediaQuery.of(context).size.width * 0.5,
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
                                    MediaQuery.of(context).size.width * 0.04,
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
                              padding: EdgeInsets.only(
                                left: 5.0,
                                right: 5.0,
                              ),
                              width: MediaQuery.of(context).size.width * 0.5,
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
                                    MediaQuery.of(context).size.width * 0.04,
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
                    'รถ SPORTS',
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
                            Container(
                              padding: EdgeInsets.only(
                                left: 5.0,
                                right: 5.0,
                              ),
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.width * 0.3,
                              child: Image.asset(
                                _showCar4[index],
                              ),
                            ),
                            Text(
                              _nameCar4[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> _price1 = [
    '599000',
    '599000',
    '662000',
    '647000',
    '1210000',
    '1210000',
    '1211000',
    '2400000',
  ];
  List<String> _nameCar1 = [
    'NEW MAZDA2 HATCHBACK',
    'NEW MAZDA2 SEDAN',
    'NEW MAZDA2 ROOKIE DRIVE',
    'NEW MAZDA2 CLAP POP',
    'ALL-NEW MAZDA3 FASTBACK',
    'ALL-NEW MAZDA3 SEDAN',
    'MAZDA CARBON EDITION',
    'MAZDA6 SD',
  ];
  List<String> _showCar1 = [
    'assets/images/ma11.png',
    'assets/images/ma12.png',
    'assets/images/ma13.png',
    'assets/images/ma14.png',
    'assets/images/ma15.png',
    'assets/images/ma16.png',
    'assets/images/ma17.png',
    'assets/images/ma18.png',
  ];
  List<String> _price2 = [
    '770000',
    '1211000',
    '1349000',
    '2199000',
  ];
  List<String> _nameCar2 = [
    'NEW MAZDA CX-3',
    'All-New Mazda CX-30',
    'NEW MAZDA CX-5',
    'ALL-NEW MAZDA CX-8',
  ];
  List<String> _showCar2 = [
    'assets/images/ma21.png',
    'assets/images/ma22.png',
    'assets/images/ma23.png',
    'assets/images/ma24.png',
  ];
  List<String> _price3 = [
    '891000',
  ];
  List<String> _nameCar3 = [
    'BT-50',
  ];
  List<String> _showCar3 = [
    'assets/images/ma31.png',
  ];
  List<String> _price4 = [
    '3029000',
  ];
  List<String> _nameCar4 = [
    'NEW MAZDA MX-5',
  ];
  List<String> _showCar4 = [
    'assets/images/ma41.png',
  ];
}
