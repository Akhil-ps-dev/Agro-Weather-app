import 'dart:ui';

import 'package:agri_weather_app/getLocation.dart';
import 'package:agri_weather_app/weatherData.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var dayInfo = DateTime.now();
  var dateFormat = DateFormat('EEEE,d MMM,yyyy').format(dayInfo);


class MyHomePage extends StatelessWidget {
  var client = WeatherData();
  var data;
  
  info() async {
    var position = await GetPosition();
    data = await client.getData(position.latitude, position.longitude);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: FutureBuilder(
      future: info(),
      builder: ((context, snapshot) {
        return Column(
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
                    '${data?.cityName}',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 35,
                        fontFamily: 'MavenPro'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    dateFormat,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 15,
                        fontFamily: 'MavenPro'),
                  ),
                  // Image.asset(
                  //   'assets/img/sunny.png',
                  //   width: size.width * 0.4,
                  // ),
                  Image.network(
                    'https:${data?.icon}',
                    width: size.width * 0.36,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${data?.condition}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'Hubballi'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${data?.temp}°',
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
                            Text(
                              '${data?.wind} km/hr',
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
                            Text(
                              '${data?.humidity}',
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
                            Text(
                              '${data?.wind_dir}',
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
                        '${data?.gust} kp/hr',
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
                        '${data?.pressure} hpa',
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
                        '${data?.uv}',
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
                        '${data?.precipe} mm',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Hubballi',
                            fontSize: 23),
                      ),
                    ],
                  ),
                ),
                //! 3rd expanded
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Wind',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontFamily: 'MavnePro',
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.wind} km/hr',
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
                        'Last Update',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontFamily: 'MavnePro',
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.last_update}',
                        style: TextStyle(
                            color: Colors.green,
                            fontFamily: 'Hubballi',
                            fontSize: 14),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        );
      }),
    ));
  }
}
