import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopexpres/apis/timbu_api.dart';
import 'package:shopexpres/screens/BottomNavagation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TimbuApiProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigation(),
      ),
    );
  }
}
