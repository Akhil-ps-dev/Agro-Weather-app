import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.75,
            width: size.width,
            padding: EdgeInsets.only(top: 30),
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: const LinearGradient(
                  colors: [Color(0xff955cd1), Color(0xff3fa2fa)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.2, 0.85]),
            ),
            child: Column(
              children: [
                Text(
                  'Const',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 35,
                      fontFamily: 'MavenPro'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  ' Monay,03,21 july',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 15,
                      fontFamily: 'MavenPro'),
                ),
                Image.asset(
                  'assets/img/sunny.png',
                  width: size.width * 0.4,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Sunny',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      // fontWeight: FontWeight.bold,
                      fontFamily: 'Hubballi'),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '15°',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Hubballi'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/img/storm.png',
                            width: size.width * 0.15,
                          ),
                          const Text(
                            '17.1 km/hr',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Hubballi',
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Wind',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontFamily: 'MavenPro',
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),

                    //!second humidity expanded
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/img/humidity.png',
                            width: size.width * 0.15,
                          ),
                          const Text(
                            '81',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Hubballi',
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Humidity',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontFamily: 'MavenPro',
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),

                    //!third wind direction expanded

                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/img/wind.png',
                            width: size.width * 0.15,
                          ),
                          const Text(
                            'SE',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Hubballi',
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Wind Direction',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontFamily: 'MavenPro',
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //! 1st expanded guest
              Expanded(
                child: Column(
                  children: [
                    //!1

                    Text(
                      'Gust',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontFamily: 'MavnePro',
                          fontSize: 17),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '37.0 kp/hr',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Hubballi',
                          fontSize: 23),
                    ),

                    //!2
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Pressure',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontFamily: 'MavnePro',
                          fontSize: 17),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '1025.0 hpa',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Hubballi',
                          fontSize: 23),
                    ),
                  ],
                ),
              ),
              //! 2nd expanded

              Expanded(
                child: Column(
                  children: [
                    Text(
                      'UV',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontFamily: 'MavnePro',
                          fontSize: 17),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '1.0',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Hubballi',
                          fontSize: 23),
                    ),

                    //!2
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Precipitaion',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontFamily: 'MavnePro',
                          fontSize: 17),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '0.0 mm',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Hubballi',
                          fontSize: 23),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
