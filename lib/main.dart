import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: DashboardView(),
));

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF263238),
      appBar: AppBar(
        title: const Text('Tablero de Juego Táctico', style: TextStyle(color: Colors.black54, fontSize: 18)),
        backgroundColor: const Color(0xFF222D32),
        elevation: 0,
      ),
      body: Column(
        children: [
          // Zona superior (Tablero + Jugadores)
          Expanded(
            flex: 6,
            child: Row(
              children: [
                // Tablero 4x4
                Expanded(
                  flex: 6,
                  child: Container(
                    color: const Color(0xFF2B3A42),
                    padding: const EdgeInsets.all(8),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 16,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF4C6572),
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.white12),
                          ),
                          child: const Icon(Icons.shield, color: Colors.white30, size: 22),
                        );
                      },
                    ),
                  ),
                ),
                // Panel Jugadores
                Expanded(
                  flex: 4,
                  child: Container(
                    color: const Color(0xFF37474F),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('Jugador 1 (Azul)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
                            SizedBox(height: 8),
                            Icon(Icons.person, color: Color(0xFF2196F3), size: 38),
                            SizedBox(height: 6),
                            Text('Puntos: 120', style: TextStyle(color: Colors.white70, fontSize: 13)),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Jugador 2 (Rojo)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
                            SizedBox(height: 8),
                            Icon(Icons.person_outline, color: Color(0xFFE53935), size: 38),
                            SizedBox(height: 6),
                            Text('Puntos: 120', style: TextStyle(color: Colors.white70, fontSize: 13)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Zona Historial
          Expanded(
            flex: 4,
            child: Container(
              color: const Color(0xFFECEFF1),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Historial de Movimientos',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black87),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: const [
                        ListTile(
                          dense: true,
                          leading: CircleAvatar(
                            radius: 14,
                            backgroundColor: Color(0xFF2196F3),
                            child: Text('1', style: TextStyle(color: Colors.white, fontSize: 12)),
                          ),
                          title: Text('Jugador 1 movió pieza', style: TextStyle(fontSize: 13)),
                          subtitle: Text('Caballero a la casilla C4', style: TextStyle(fontSize: 11)),
                          trailing: Icon(Icons.history, size: 18),
                        ),
                        ListTile(
                          dense: true,
                          leading: CircleAvatar(
                            radius: 14,
                            backgroundColor: Color(0xFFE53935),
                            child: Text('2', style: TextStyle(color: Colors.white, fontSize: 12)),
                          ),
                          title: Text('Jugador 2 movió pieza', style: TextStyle(fontSize: 13)),
                          subtitle: Text('Caballero a la casilla C4', style: TextStyle(fontSize: 11)),
                          trailing: Icon(Icons.history, size: 18),
                        ),
                        ListTile(
                          dense: true,
                          leading: CircleAvatar(
                            radius: 14,
                            backgroundColor: Color(0xFF2196F3),
                            child: Text('3', style: TextStyle(color: Colors.white, fontSize: 12)),
                          ),
                          title: Text('Jugador 1 movió pieza', style: TextStyle(fontSize: 13)),
                          subtitle: Text('Caballero a la casilla C4', style: TextStyle(fontSize: 11)),
                          trailing: Icon(Icons.history, size: 18),
                        ),
                        ListTile(
                          dense: true,
                          leading: CircleAvatar(
                            radius: 14,
                            backgroundColor: Color(0xFFE53935),
                            child: Text('4', style: TextStyle(color: Colors.white, fontSize: 12)),
                          ),
                          title: Text('Jugador 2 movió pieza', style: TextStyle(fontSize: 13)),
                          subtitle: Text('Caballero a la casilla C4', style: TextStyle(fontSize: 11)),
                          trailing: Icon(Icons.history, size: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}