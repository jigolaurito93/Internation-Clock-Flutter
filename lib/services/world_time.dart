import 'package:http/http.dart';
// install this package to use jsonDecode
import 'dart:convert';

class WorldTime {
  String? location; // location name for the UI
  String? time; // the time in that location
  String? flag; // url to an asset flag icon
  String? url; // location url for API endpoint

  WorldTime({this.location, this.time, this.flag, this.url});

  Future<void> getTime() async {
    Uri urls = Uri.parse('https://worldtimeapi.org/api/timezone/$url');
    Response response = await get(urls);
    // install dart:convert pakage to use jsonDecode
    Map data = jsonDecode(response.body);

    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    String datetimeutc = data['utc_datetime'];
    // print(data);

    // print(offset);

    // Create a DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    // Set the time property
    time = now.toString();
  }
}
