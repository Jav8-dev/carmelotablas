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
                    padding: const EdgeInsets.all(12),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 16,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF455A64),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white24, width: 1),
                          ),
                          child: const Icon(
                            Icons.shield_outlined,
                            color: Colors.white60,
                            size: 26,
                          ),
                        );
                      },
                    ),
                  ),
                ),

                // Panel de jugadores (placeholder)
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
