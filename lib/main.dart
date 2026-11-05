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
                // TABLERO 4x4
                Expanded(
                  flex: 6,
                  child: Container(
                    color: const Color(0xFF2E3E46),
                    padding: const EdgeInsets.all(8),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 16,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF475B64),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Icon(Icons.shield, color: Colors.white38),
                        );
                      },
                    ),
                  ),
                ),
                // Jugadores (vacío aún)
                Expanded(
                  flex: 4,
                  child: Container(color: const Color(0xFF3B4D56)),
                ),
              ],
            ),
          ),
          // Historial
          Expanded(
            flex: 4,
            child: Container(color: const Color(0xFFEEEEEE)),
          ),
        ],
      ),
    );
  }
}