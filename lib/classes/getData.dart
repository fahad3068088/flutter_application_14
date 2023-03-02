
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class allContre {
   late bool aaa;
    late String timeNaw;
    late String timeZone;
  getData() async {
   
    Response response = await get(
        Uri.parse("http://worldtimeapi.org/api/timezone/Asia/Riyadh"));
    Map receivedData = jsonDecode(response.body);
    String datetime = receivedData["utc_datetime"];
    DateTime ad = DateTime.parse(datetime);
    String offset = receivedData["utc_offset"].substring(0, 3);
    int af = int.parse(offset);
    DateTime realTime = ad.add(Duration(hours: af));
    if (realTime.hour>12&&realTime.hour<5) {
       aaa=true;
    } else {
      aaa=false;
    }
   
     timeNaw = DateFormat('hh:mm a').format(realTime);
    
     timeZone = receivedData["timezone"];
    
    
  }


}












