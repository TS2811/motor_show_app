// ignore_for_file: unused_field, prefer_const_constructors, prefer_final_fields, use_super_parameters, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motor_show_2024_app/views/supviews/calculate_ui.dart';
import 'package:motor_show_2024_app/views/supviews/honda_ui.dart';
import 'package:motor_show_2024_app/views/supviews/mazda_ui.dart';
import 'package:motor_show_2024_app/views/supviews/mitsubishi_ui.dart';
import 'package:motor_show_2024_app/views/supviews/toyota_ui.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';

class HomeUI extends StatefulWidget {
  final String? price;
  final String? carName;
  final String? carShow;
  HomeUI({
    Key? key,
    this.price,
    this.carName,
    this.carShow,
  }) : super(key: key);
  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _currentIndex = 4;
  int r = 158;
  int g = 158;
  int b = 158;
  int _a = 255;
  int _r = 33;
  int _g = 150;
  int _b = 243;
  List _currentSo = [
    ToyotaUI(),
    HondaUI(),
    MitsubishiUI(),
    MazdaUI(),
    CalculateUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PandaBar(
        onChange: (id) {
          setState(() {
            _currentIndex = id;
            r = 33;
            g = 150;
            b = 243;
            _a = 150;
            _r = 158;
            _g = 158;
            _b = 158;
          });
        },
        onFabButtonPressed: () {
          setState(() {
            _currentIndex = 4;
            r = 158;
            g = 158;
            b = 158;
            _a = 255;
            _r = 33;
            _g = 150;
            _b = 243;
          });
        },
        buttonSelectedColor: Color.fromARGB(255, r, g, b),
        buttonColor: Colors.grey,
        fabIcon: Icon(
          FontAwesomeIcons.wallet,
          color: Color.fromARGB(_a, 255, 255, 255),
        ),
        fabColors: [
          Color.fromARGB(255, _r, _g, _b),
          Color.fromARGB(255, _r, _g, _b),
        ],
        buttonData: [
          PandaBarButtonData(
            id: 0,
            icon: _currentIndex == 0
                ? FontAwesomeIcons.carOn
                : FontAwesomeIcons.carRear,
            title: 'Toyota',
          ),
          PandaBarButtonData(
            id: 1,
            icon: _currentIndex == 1
                ? FontAwesomeIcons.carOn
                : FontAwesomeIcons.carRear,
            title: 'Honda',
          ),
          PandaBarButtonData(
            id: 2,
            icon: _currentIndex == 2
                ? FontAwesomeIcons.carOn
                : FontAwesomeIcons.carRear,
            title: 'Mitsubishi',
          ),
          PandaBarButtonData(
            id: 3,
            icon: _currentIndex == 3
                ? FontAwesomeIcons.carOn
                : FontAwesomeIcons.carRear,
            title: 'Mazda',
          ),
        ],
      ),
      body: _currentIndex == 4
          ? CalculateUI(
              price: widget.price,
              carName: widget.carName,
              carShow: widget.carShow,
            )
          : _currentSo[_currentIndex],
    );
  }
}
