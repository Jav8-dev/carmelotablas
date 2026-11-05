import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: DashboardView()));

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablero de Juego Táctico'),
        backgroundColor: const Color(0xFF1F2B30),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                // 1. Tablero
                Expanded(
                  flex: 6,
                  child: Container(color: const Color(0xFF2E3E46)),
                ),
                // 2. Info Jugadores
                Expanded(
                  flex: 4,
                  child: Container(color: const Color(0xFF3B4D56)),
                ),
              ],
            ),
          ),
          // 3. Historial abajo
          Expanded(
            flex: 4,
            child: Container(color: const Color(0xFFEEEEEE)),
          ),
        ],
      ),
    );
  }
}