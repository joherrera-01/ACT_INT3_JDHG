import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'providers/paseos_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PaseosProvider()),
      ],
      child: MaterialApp(
        title: 'PaseoCanino',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepOrange,
            primary: Colors.deepOrange,
            secondary: const Color(0xFF00A884),
          ),
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            centerTitle: true,
            titleTextStyle: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}