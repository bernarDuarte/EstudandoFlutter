import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location = ' ';// location name for the ui
  String time= ' '; // time in the location
  String flag= ' '; // url for an asset flag icon
  String url= ' '; // location url for api endpoint
  bool isDayTime = true; //true or false if daytime
  WorldTime({required this.location,required this.flag,required this.url,this.time =' ', this.isDayTime =false });

  Future<void> getTime() async {
    try{
      String postsURL = 'http://worldtimeapi.org/api/timezone/$url';
      final Uri uri = Uri.parse(postsURL);
      Response response = await get(uri);
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      //create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      isDayTime = now.hour > 6 && now.hour < 18 ? true : false;
      time = DateFormat.jm().format(now);



    }
    catch(e){
      print('Caught error :  $e');
      time = 'could not get time';
    }

  }

}



