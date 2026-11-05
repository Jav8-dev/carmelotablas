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

  Widget _buildPlayerCard({
    required String name,
    required Color color,
    required int points,
    required IconData icon,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Icon(icon, size: 48, color: color),
        const SizedBox(height: 8),
        Text(
          'Puntos: $points',
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablero de Juego Táctico'),
        backgroundColor: const Color(0xFF202C33),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                // Tablero 4x4
                Expanded(
                  flex: 6,
                  child: Container(
                    color: const Color(0xFF263238),
                    padding: const EdgeInsets.all(12),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 16,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                // SECCIÓN INFORMACIÓN DE JUGADORES
                Expanded(
                  flex: 4,
                  child: Container(
                    color: const Color(0xFF37474F),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildPlayerCard(
                          name: 'Jugador 1 (Azul)',
                          color: Colors.blueAccent,
                          points: 120,
                          icon: Icons.person,
                        ),
                        _buildPlayerCard(
                          name: 'Jugador 2 (Rojo)',
                          color: Colors.redAccent,
                          points: 120,
                          icon: Icons.person_outline,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Historial (placeholder)
          Expanded(
            flex: 4,
            child: Container(
              color: const Color(0xFFECEFF1),
              child: const Center(
                child: Text('Historial de Movimientos'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
