import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/responsive/mobile_screen_layout.dart';
import 'package:instagram_flutter/responsive/responsive_layout_screen.dart';
import 'package:instagram_flutter/responsive/web_screen_layout.dart';
import 'package:instagram_flutter/screens/login_screen.dart';
import 'package:instagram_flutter/screens/signup_screen.dart';
import 'package:instagram_flutter/utils/colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAqkZR8xevOrmObMLbV5jLIhwRIsETUuZQ', 
        appId: '1:604965357644:web:cf7d71135d8a50453c0ce9', 
        messagingSenderId: '604965357644', 
        projectId: 'instagram-clone-b9432',
        storageBucket: 'instagram-clone-b9432.appspot.com',
      ),
    );
  }else{
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const 
      // ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(),
      // webScrrenLayout: WebScreenLayout(),
      // ),
      home: SignupScreen(),
    );
  }
}
