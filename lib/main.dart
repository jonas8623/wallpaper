import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        "/": (context) => const HomePage(),
        "image_page": (context) => const ImagePage(),
        "favorite_page": (context) => const FavoritePage(),
      },
    );
  }
}


