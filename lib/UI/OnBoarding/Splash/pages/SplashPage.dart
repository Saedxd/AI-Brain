import 'package:chatgpt/UI/Home/HomeScreen/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:chatgpt/Data/prefs_helper/iprefs_helper.dart';
import 'package:chatgpt/Injection.dart';
import 'package:chatgpt/UI/Auth/Login_screen/pages/Login_Page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>  with TickerProviderStateMixin{
  bool islogedin = false;
  final pref = sl<IPrefsHelper>();

  void delay(){
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>HomePage()
        ),
      );
    });
  }

  @override
  void initState(){
    delay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffCEEAFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Center(
          child: Container(
            width: w/1.2,
            child:SvgPicture.asset("assets/openai.svg",height: 150.h,),
          ),
        )
        ],
      ),
    );
  }
}
