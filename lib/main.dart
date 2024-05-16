import 'package:flutter/material.dart';
import 'package:location_task/app/data/source/locale/my_preference.dart';
import 'package:location_task/app/di/di.dart';
import 'package:location_task/app/presentation/screens/main/main_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await MyPreference.init();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}
