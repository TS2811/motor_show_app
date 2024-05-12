// ignore_for_file: prefer_const_constructors, prefer_final_fields, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/home_ui.dart';

class HondaUI extends StatefulWidget {
  const HondaUI({super.key});

  @override
  State<HondaUI> createState() => _HondaUIState();
}

class _HondaUIState extends State<HondaUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 156, 13, 13),
        centerTitle: true,
        title: Text(
          'Honda',
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
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.width * 0.3,
                              child: Image.asset(
                                _showCar3[index],
                                width: MediaQuery.of(context).size.width * 0.5,
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> _price1 = [
    '839000',
    '799000',
    '1799000',
    '1259000',
    '3990000',
  ];
  List<String> _nameCar1 = [
    'City (e:HEV/Turbo)',
    'City Hatchback (e:HEV/Turbo)',
    'Accord e:HEV',
    'Civic (e:HEV/Turbo)',
    'Civic Type R',
  ];
  List<String> _showCar1 = [
    'assets/images/h11.png',
    'assets/images/h12.png',
    'assets/images/h13.png',
    'assets/images/h14.png',
    'assets/images/h15.png',
  ];
  List<String> _price2 = [
    '1729000',
    '869000',
    '977000',
    '1179000',
  ];
  List<String> _nameCar2 = [
    'CR-V (e:HEV/Turbo)',
    'WR-V',
    'BR-V',
    'HR-V e:HEV',
  ];
  List<String> _showCar2 = [
    'assets/images/h21.png',
    'assets/images/h22.png',
    'assets/images/h23.png',
    'assets/images/h24.png',
    ];
  List<String> _price3 = [
    '1391000',
  ];
  List<String> _nameCar3 = [
    'Ridgeline 2024',
  ];
  List<String> _showCar3 = [
    'assets/images/HondaRidgeline.png',
  ];
}
