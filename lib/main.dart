// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 251, 154, 79),
          appBar: AppBar(
            title: const Text(
              'Weather Forecast',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: const Color.fromARGB(255, 251, 154, 79),
          ),
          body: _buildBody()),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(
          width: 24.0,
        ),
        _MyHeaderSearch(),
        const SizedBox(
          width: 24.0,
        ),
        SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //          const SizedBox(
            //   width: 32.0,
            // ),
            const SizedBox(height: 32.0),
            _MyTextHeader(),
            const SizedBox(height: 32.0),
            _MyIconSunny(),
            const SizedBox(height: 32.0),
            _MyColumnText(),
            const SizedBox(height: 32.0),
            const Text(
              'Погода на 7 дней',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32.0),
            _MyListView(),
          ],
        )),
      ],
    ),
  );
}

Row _MyHeaderSearch() {
  return const Row(
    children: [
      Icon(
        Icons.search,
        color: Colors.white,
        size: 24,
      ),
      SizedBox(
        width: 12.0,
      ), //расстояние между иконкой и текстом
      Text(
        'Введите свой город',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ],
  );
}

Column _MyTextHeader() {
  return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Краснодар '.toUpperCase(),
        style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 16.0),
      const Text(
        '14 Октября, 2024',
        style: TextStyle(color: Colors.white, fontSize: 16),
      )
    ],
  );
}

Row _MyIconSunny() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.sunny,
        color: Colors.white,
        size: 64,
      ),
      SizedBox(width: 16.0),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '14C',
            style: TextStyle(color: Colors.white, fontSize: 42),
          ),
          
          Text(
            'Ясно, тепло',
            style: TextStyle(color: Colors.white, fontSize: 14),
          )
        ],
      )
    ],
  );
}

Row _MyColumnText() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 32,
          ),
          Text(
            '5',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            'km/ch',
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 32,
          ),
          Text(
            '7',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            '%',
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 32,
          ),
          Text(
            '20',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            '%',
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      )
    ],
  );
}

Widget _MyListView() {
  return SizedBox(
    height: 150,
    width: double.infinity,
  
    child: ListView(
      padding: const EdgeInsets.all(8.0),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          height: 120,
          width: 150,
          color: const Color.fromARGB(255, 235, 176, 114),
          child: Center( //понедельник
            child: Column(
               
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Понедельник'.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const Padding(
                  padding: EdgeInsets.all(6.0),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '17C',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 24),
                    ),
                    SizedBox(width: 16.0),
                    Icon(
                      Icons.sunny,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        Container(
          height: 120,
          width: 150,
          color: const Color.fromARGB(255, 235, 176, 114),
          child: Center( 
            child: Column(
               
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Вторник'.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const Padding(
                  padding: EdgeInsets.all(6.0),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '17C',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 24),
                    ),
                    SizedBox(width: 16.0),
                    Icon(
                      Icons.sunny,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        Container(
          height: 120,
          width: 150,
          color: const Color.fromARGB(255, 235, 176, 114),
          child: Center( 
            child: Column(
               
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Среда'.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const Padding(
                  padding: EdgeInsets.all(6.0),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '17C',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 24),
                    ),
                    SizedBox(width: 16.0),
                    Icon(
                      Icons.sunny,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        Container(
          height: 120,
          width: 150,
          color: const Color.fromARGB(255, 235, 176, 114),
          child: Center( 
            child: Column(
               
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Четверг'.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const Padding(
                  padding: EdgeInsets.all(6.0),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '17C',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 24),
                    ),
                    SizedBox(width: 16.0),
                    Icon(
                      Icons.sunny,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
