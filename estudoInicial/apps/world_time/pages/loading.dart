import 'package:flutter/material.dart';
import 'package:world_time/Services/wolrd_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void SetupWorldTime() async {
    WorldTime instance = WorldTime(location:'Berlin',flag: 'germany.png', url: 'Europe/Berlin', time: 'a',isDayTime: true);
    await instance.getTime();
    await Future.delayed(const Duration(seconds:2),(){

    });
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  void initState(){
    super.initState();
    SetupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
