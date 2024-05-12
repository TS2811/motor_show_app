// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_app/views/home_ui.dart';

class IntroductuonUI extends StatefulWidget {
  const IntroductuonUI({super.key});

  @override
  State<IntroductuonUI> createState() => _IntroductuonUIState();
}

class _IntroductuonUIState extends State<IntroductuonUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/bg2.gif',
              ),
              fit: BoxFit.cover),
        ),
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              image: Image.asset(
                'assets/images/toyotaSupra.png',
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              titleWidget: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Toyota GR Super',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              bodyWidget: Column(
                children: [
                  Text(
                    'Price 5,199,000 THB',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.white,
                    ),
                    //textAlign: TextAlign.center,
                  ),
                  Text(
                    'GR SUPRA COLOR\n◆ Matte Avalanche White Me.\n◆ Volcanic Ash Gray Me.\n◆ Dawn Blue Me.\n◆ Prominence Red\n◆ Black Metallic\n◆ Lighting Yellow\n◆ Matte Storm Gray Metallic\n◆ White Metallic',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.white,
                    ),
                    //textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            PageViewModel(
              image: Image.asset(
                'assets/images/HondaNSXTypeS.jpg',
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              titleWidget: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Honda NSX Type S',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              bodyWidget: Column(
                children: [
                  Text(
                    'Price 8,200,000 THB',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.white,
                    ),
                    //textAlign: TextAlign.center,
                  ),
                  Text(
                    'Honda NSX Type S ใหม่\nถูกเผยโฉมอย่างเป็นทางการแล้ว\nรีดขุมพลังแรงขึ้นเป็น 600 แรงม้า',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.white,
                    ),
                    //textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            PageViewModel(
              image: Image.asset(
                'assets/images/MitsubishiPajeroSport.webp',
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              titleWidget: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mitsubishi Pajero Sport 2024',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              bodyWidget: Column(
                children: [
                  Text(
                    'ราคาจำหน่ายแต่ละรุ่นย่อย\n2.4 PRIME 2WD 1,389,000 บาท\n2.4 ULTRA 2WD 1,529,000 บาท\n2.4 Elite Edition Ultra 2WD 1,579,000 บาท\n2.4 Elite Edition Ultra 4WD 1,689,000 บาท',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.white,
                    ),
                    //textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            PageViewModel(
              image: Image.asset(
                'assets/images/MazdaMX5.png',
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              titleWidget: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mazda MX-5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              bodyWidget: Column(
                children: [
                  Text(
                    'Price 2,912,000 THB',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.white,
                    ),
                    //textAlign: TextAlign.center,
                  ),
                  Text(
                    'เครื่องยนต์เบนซิน Skyactiv-G 4 สูบ\nขนาด 2.0 ลิตร กำลังสูงสุด 184 แรงม้า\nที่ 7,000 รอบ/นาที แรงบิดสูงสุด 205 นิวตันเมตร\nที่ 4,000 รอบ/นาที จับคู่กับเกียร์อัตโนมัติ 6 จังหวะ\nและเกียร์ธรรมดา 6 จังหวะ ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.white,
                    ),
                    //textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
          done: Text(
            'หนัาหลัก',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height * 0.02,
              color: Colors.white,
            ),
          ),
          onDone: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ),
          ),
          next: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          ),
          nextFlex: 0,
          showSkipButton: true,
          skip: Text(
            'Skip',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height * 0.02,
              color: Colors.white,
            ),
          ),
          dotsDecorator: DotsDecorator(
            color: Color.fromRGBO(117, 101, 101, 1),
            activeColor: Colors.white,
            activeSize: Size(
              MediaQuery.of(context).size.width * 0.045,
              MediaQuery.of(context).size.width * 0.025,
            ),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          ),
          globalBackgroundColor: Colors.transparent,
          infiniteAutoScroll: true,
          autoScrollDuration: 2000,
        ),
      ),
    );
  }
}
