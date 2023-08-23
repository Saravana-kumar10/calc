import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'calc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CALCULATOR',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.autoScale(450, name: MOBILE),
          ResponsiveBreakpoint.autoScale(450, name: TABLET),
          ResponsiveBreakpoint.resize(450, name: TABLET),
          ResponsiveBreakpoint.resize(450, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(450, name: DESKTOP),
        ],
      ),
      home: SafeArea(
        child: AnimatedSplashScreen(
          splashIconSize: double.maxFinite,




          duration: 2000,
          splash: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient:  LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.black, Colors.redAccent]
              ),
            ),
            child: Center(
              child: RichText(
                  text: TextSpan(
                      text: "S",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orangeAccent),
                      children: [
                        TextSpan(text: "Calculator",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.blueGrey)),

                      ]

                  )),

            ),


          ),
          nextScreen: Cal(),
          splashTransition: SplashTransition.sizeTransition,
          pageTransitionType: PageTransitionType.fade,


          // pageTransitionType: PageTransitionType.scale,
        ),
      ),
    );
  }
}

