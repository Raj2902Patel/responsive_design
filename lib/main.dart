import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_interface/pages/home_page.dart';
import 'package:responsive_interface/controllers/menu_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive UI",
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Menu()),
        ],
        child: const HomePage(),
      ),
    );
  }
}
