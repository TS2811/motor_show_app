// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, sort_child_properties_last, use_super_parameters, prefer_const_constructors_in_immutables, must_be_immutable, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CalculateUI extends StatefulWidget {
  String? price;
  String? carName;
  String? carShow;
  CalculateUI({
    Key? key,
    this.price,
    this.carName,
    this.carShow,
  }) : super(key: key);

  @override
  State<CalculateUI> createState() => _CalculateUIState();
}

class _CalculateUIState extends State<CalculateUI> {
  String _downPayment = '0';

  TextEditingController _nameCar = TextEditingController(text: '-');
  TextEditingController _priceCar = TextEditingController(text: '0');
  TextEditingController _interestCar = TextEditingController(text: '');

  List<String> _Data = [
    'เลือก',
    '12 งวด (1ปี)',
    '24 งวด (2ปี)',
    '36 งวด (3ปี)',
    '48 งวด (4ปี)',
    '60 งวด (5ปี)',
    '72 งวด (6ปี)',
  ];
  String _collectData = 'เลือก';

  @override
  void initState() {
    super.initState();
    _nameCar = TextEditingController(text: widget.carName ?? '-');
    _priceCar = TextEditingController(text: widget.price ?? '0');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 50.0,
            right: 50.0,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                widget.carShow == null
                    ? Image.asset(
                        'assets/images/logo.png',
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.width * 0.5,
                      )
                    : Image.asset(
                        widget.carShow!,
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.width * 0.5,
                      ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ชื่อรถ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                    ),
                  ),
                ),
                TextField(
                  controller: _nameCar,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ราคา (บาท)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                    ),
                  ),
                ),
                TextField(
                  controller: _priceCar,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'เงินดาวน์ (%)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Radio(
                            onChanged: (ParamValue) {
                              setState(() {
                                _downPayment = ParamValue!;
                              });
                            },
                            value: '10',
                            groupValue: _downPayment,
                          ),
                          Text(
                            '10%',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Radio(
                            onChanged: (ParamValue) {
                              setState(() {
                                _downPayment = ParamValue!;
                              });
                            },
                            value: '20',
                            groupValue: _downPayment,
                          ),
                          Text(
                            '20%',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Radio(
                            onChanged: (ParamValue) {
                              setState(() {
                                _downPayment = ParamValue!;
                              });
                            },
                            value: '25',
                            groupValue: _downPayment,
                          ),
                          Text(
                            '25%',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Radio(
                            onChanged: (ParamValue) {
                              setState(() {
                                _downPayment = ParamValue!;
                              });
                            },
                            value: '30',
                            groupValue: _downPayment,
                          ),
                          Text(
                            '30%',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'จำนวนปีที่ผ่อน',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                    underline: Container(),
                    onChanged: (ParamValue) {
                      setState(() {
                        _collectData = ParamValue!;
                      });
                    },
                    value: _collectData,
                    items: _Data.map(
                      (e) => DropdownMenuItem(
                        child: Align(
                          child: Text(
                            e,
                          ),
                        ),
                        value: e,
                      ),
                    ).toList(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ดอกเบี้ย (%) ต่อปี',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                    ),
                  ),
                ),
                TextField(
                  controller: _interestCar,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          if (_priceCar.text == '0') {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Align(
                                      child: Text('\nโปรดป้อนราคารถ(บาท)')),
                                  actions: [
                                    Align(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 173, 38, 38),
                                          fixedSize: Size(
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'ตกลง',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else if (_downPayment == '0') {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Align(
                                      child: Text('\nโปดเลือกเงินดาวน์(%)')),
                                  actions: [
                                    Align(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 173, 38, 38),
                                          fixedSize: Size(
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'ตกลง',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else if (_collectData == 'เลือก') {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Align(
                                      child: Text('\nโปดเลือกเจำนวนปีที่ผ่อน')),
                                  actions: [
                                    Align(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 173, 38, 38),
                                          fixedSize: Size(
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'ตกลง',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else if (_interestCar.text == '') {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Align(
                                      child:
                                          Text('\nโปรดป้อนดอกเบี้ยต่อปี(%)')),
                                  actions: [
                                    Align(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 173, 38, 38),
                                          fixedSize: Size(
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'ตกลง',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            // ดำเนินการคำนวณต่อเมื่อค่าที่ป้อนไม่ใช่ 0

                            double downmoney = (double.parse(_priceCar.text) *
                                    int.parse(_downPayment)) /
                                100;
                            double salecar =
                                (double.parse(_priceCar.text) - downmoney);
                            double Interestamount =
                                (salecar * (double.parse(_interestCar.text))) /
                                    100;
                            double totalperiod = 0;
                            double Monthlyinstallmentamount = 0;
                            if (_collectData == '12 งวด (1ปี)') {
                              totalperiod = Interestamount * 1;
                              Monthlyinstallmentamount =
                                  (salecar + totalperiod) / (1 * 12);
                            } else if (_collectData == '24 งวด (2ปี)') {
                              totalperiod = Interestamount * 2;
                              Monthlyinstallmentamount =
                                  (salecar + totalperiod) / (2 * 12);
                            } else if (_collectData == '36 งวด (3ปี)') {
                              totalperiod = Interestamount * 3;
                              Monthlyinstallmentamount =
                                  (salecar + totalperiod) / (3 * 12);
                            } else if (_collectData == '48 งวด (4ปี)') {
                              totalperiod = Interestamount * 4;
                              Monthlyinstallmentamount =
                                  (salecar + totalperiod) / (4 * 12);
                            } else if (_collectData == '60 งวด (5ปี)') {
                              totalperiod = Interestamount * 5;
                              Monthlyinstallmentamount =
                                  (salecar + totalperiod) / (5 * 12);
                            } else if (_collectData == '72 งวด (6ปี)') {
                              totalperiod = Interestamount * 6;
                              Monthlyinstallmentamount =
                                  (salecar + totalperiod) / (6 * 12);
                            }
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('ยอดผ่อนรถต่อเดือน'),
                                  content: Text(
                                    'ราคารถ ' +
                                        _priceCar.text +
                                        ' บาท\nดาวน์ ' +
                                        _downPayment +
                                        '%' +
                                        ' เป็นเงิน ' +
                                        salecar.toStringAsFixed(0) +
                                        ' บาท ' +
                                        'จำนวนเดือนผ่อน ' +
                                        _collectData +
                                        '\n\nค่าผ่อนต่อเดือนเป็นเงิน\n' +
                                        Monthlyinstallmentamount
                                            .toStringAsFixed(2) +
                                        ' บาท',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('ตกลง'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        icon: Icon(
                          FontAwesomeIcons.calculator,
                          color: Colors.white,
                        ),
                        label: Text(
                          'คำนวนค่างวดรถ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 173, 38, 38),
                          fixedSize: Size(
                            MediaQuery.of(context).size.width * 0.5,
                            MediaQuery.of(context).size.height * 0.05,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            _nameCar = TextEditingController(text: '-');
                            _priceCar = TextEditingController(text: '0');
                            _interestCar = TextEditingController(text: '');
                            _downPayment = '0';
                            _collectData = 'เลือก';
                            widget.carShow = null;
                          });
                        },
                        icon: Icon(
                          Icons.cancel_rounded,
                          color: Colors.white,
                        ),
                        label: Text(
                          'ยกเลิก',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 78, 74, 74),
                          fixedSize: Size(
                            MediaQuery.of(context).size.width * 0.5,
                            MediaQuery.of(context).size.height * 0.05,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(0),
                        ),
                      ),
                    ),
                  ],
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
}
