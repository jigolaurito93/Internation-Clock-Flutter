import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map? data = {};

  @override
  Widget build(BuildContext context) {
    // data = ModalRoute.of(context)?.settings.arguments;
    data = ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>?;

    print(data);

    String bgImage = data?['isDaytime'] ? 'morning.jpg' : 'evening.jpg';
    Color bgColor = data?['isDaytime'] ? Colors.blue : Colors.indigo;
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/$bgImage'),
                  fit: BoxFit.cover) // Fit the image to the entire container,
              ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () {
                    // pushName is pushing a screen on top of another screen
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: const Icon(
                    Icons.edit_location,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'Edit Location',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data?['location'],
                      style: const TextStyle(fontSize: 28, letterSpacing: 2.0),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  data?['time'],
                  style: const TextStyle(
                      fontSize: 66, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
