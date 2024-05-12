// ignore_for_file: prefer_const_constructors, prefer_final_fields, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/home_ui.dart';

class MitsubishiUI extends StatefulWidget {
  const MitsubishiUI({super.key});

  @override
  State<MitsubishiUI> createState() => _MitsubishiUIState();
}

class _MitsubishiUIState extends State<MitsubishiUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 156, 13, 13),
        centerTitle: true,
        title: Text(
          'Mitsubishi',
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
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.width * 0.3,
                              child: Image.asset(
                                _showCar1[index],
                                width: MediaQuery.of(context).size.width * 0.5,
                                fit: BoxFit.cover,
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
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.width * 0.3,
                              child: Image.asset(
                                _showCar2[index],
                                width: MediaQuery.of(context).size.width * 0.5,
                                fit: BoxFit.cover,
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
                                fit: BoxFit.cover,
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
    '584000',
    '579000',
  ];
  List<String> _nameCar1 = [
    'Attrage',
    'Mirage',
  ];
  List<String> _showCar1 = [
    'assets/images/mi11.webp',
    'assets/images/mi12.webp',
  ];
  List<String> _price2 = [
    '912000',
    '933000',
    '946000',
    '961000',
    '1749000',
    '1689000',
    '912000',
  ];
  List<String> _nameCar2 = [
    'X Pander',
    'X Pander HEV',
    'X Pander Cross',
    'X Pander Cross HEV',
    'Outlander PHEV',
    'Pajero Sport',
  ];
  List<String> _showCar2 = [
    'assets/images/mi21.webp',
    'assets/images/mi22.webp',
    'assets/images/mi23.webp',
    'assets/images/mi24.webp',
    'assets/images/mi25.webp',
    'assets/images/mi26.webp',
  ];
  List<String> _price3 = [
    '1298000',
  ];
  List<String> _nameCar3 = [
    'All-New Triton',
  ];
  List<String> _showCar3 = [
    'assets/images/mi31.webp',
  ];
}
