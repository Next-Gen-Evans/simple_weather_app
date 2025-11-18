import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_weather_app/models/theme.dart';
import 'package:simple_weather_app/screens/weather_screen.dart';

void main() {
  runApp(
  ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  )
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Weather App',
      themeMode: themeProvider.themeMode,
      home: WeatherScreen(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}
