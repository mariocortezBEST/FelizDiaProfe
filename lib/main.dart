import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const FelizDiaApp());

class FelizDiaApp extends StatelessWidget {
  const FelizDiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feliz día Porfe Gerardo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Shader futuristGradient = const LinearGradient(
      colors: <Color>[Colors.cyanAccent, Colors.deepPurpleAccent],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 300.0, 70.0));

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Feliz día Porfe Gerardo',
                style: GoogleFonts.orbitron(
                  textStyle: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = futuristGradient,
                    shadows: [
                      const Shadow(
                        blurRadius: 10.0,
                        color: Colors.cyanAccent,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              // 👇 Aquí va la imagen futurista del programador
              Image.asset(
                'assets/images/programador.png',
                height: 240,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stack) => const Icon(
                  Icons.computer,
                  color: Colors.cyanAccent,
                  size: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
