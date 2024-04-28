import 'package:flutter/material.dart';
import 'package:international_clock/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(
      url: 'Europe/Berlin',
      location: "Berlin",
      flag: 'berlin.png',
    ),
    WorldTime(
      url: 'Asia/Seoul',
      location: "Seoul",
      flag: 'seoul.png',
    ),
    WorldTime(
      url: 'America/New_York',
      location: "New York",
      flag: 'america.png',
    ),
    WorldTime(
      url: 'America/Chicago',
      location: "Chicago",
      flag: 'america.png',
    ),
    WorldTime(
      url: 'Africa/Nairobi',
      location: "Nairobi",
      flag: 'kenya.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {},
                title: Text(
                  locations[index].location.toString(),
                ),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
