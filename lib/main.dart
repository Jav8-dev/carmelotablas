import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TacticalDashboardPage(),
    );
  }
}

class TacticalDashboardPage extends StatelessWidget {
  const TacticalDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablero de Juego Táctico'),
        backgroundColor: const Color(0xFF202C33),
      ),
      body: Column(
        children: [
          // Tablero  y Jugadores
          Expanded(
            flex: 6,
            child: Row(
              children: [
                // 1. Área de juego
                Expanded(
                  flex: 6,
                  child: Container(
                    color: const Color(0xFF2A3942),
                    child: const Center(
                      child: Text(
                        'Área de Juego (Tablero)',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ),
                // 2. Información de jugadores
                Expanded(
                  flex: 4,
                  child: Container(
                    color: const Color(0xFF37474F),
                    child: const Center(
                      child: Text(
                        'Información de Jugadores',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Historial de movimientos
          Expanded(
            flex: 4,
            child: Container(
              color: const Color(0xFFECEFF1),
              child: const Center(
                child: Text(
                  'Historial de Movimientos',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}