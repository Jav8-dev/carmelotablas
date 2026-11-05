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
                // Tablero
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
                // Jugadores
                Expanded(
                  flex: 4,
                  child: Container(
                    color: const Color(0xFF3B4D56),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('Jugador 1 (Azul)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            SizedBox(height: 6),
                            Icon(Icons.person, color: Colors.blue, size: 40),
                            SizedBox(height: 6),
                            Text('Puntos: 120', style: TextStyle(color: Colors.white70)),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Jugador 2 (Rojo)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            SizedBox(height: 6),
                            Icon(Icons.person_outline, color: Colors.red, size: 40),
                            SizedBox(height: 6),
                            Text('Puntos: 120', style: TextStyle(color: Colors.white70)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // HISTORIAL VISUAL
          Expanded(
            flex: 4,
            child: Container(
              color: const Color(0xFFECEFF1),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text('Historial de Movimientos', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        ListTile(
                          dense: true,
                          leading: CircleAvatar(backgroundColor: Colors.blue, child: Text('1', style: TextStyle(color: Colors.white))),
                          title: Text('Jugador 1 movió pieza'),
                          subtitle: Text('Caballero a la casilla C4'),
                          trailing: Icon(Icons.history),
                        ),
                        ListTile(
                          dense: true,
                          leading: CircleAvatar(backgroundColor: Colors.red, child: Text('2', style: TextStyle(color: Colors.white))),
                          title: Text('Jugador 2 movió pieza'),
                          subtitle: Text('Caballero a la casilla C4'),
                          trailing: Icon(Icons.history),
                        ),
                        ListTile(
                          dense: true,
                          leading: CircleAvatar(backgroundColor: Colors.blue, child: Text('3', style: TextStyle(color: Colors.white))),
                          title: Text('Jugador 1 movió pieza'),
                          subtitle: Text('Caballero a la casilla C4'),
                          trailing: Icon(Icons.history),
                        ),
                        ListTile(
                          dense: true,
                          leading: CircleAvatar(backgroundColor: Colors.red, child: Text('4', style: TextStyle(color: Colors.white))),
                          title: Text('Jugador 2 movió pieza'),
                          subtitle: Text('Caballero a la casilla C4'),
                          trailing: Icon(Icons.history),
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