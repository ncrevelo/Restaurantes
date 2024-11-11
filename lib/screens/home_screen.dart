import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reseñas de Restaurantes'),
        backgroundColor: blueGray,  // Usamos el color de la paleta
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/foto-simon-bosch.jpg',  // Cargamos la imagen desde assets
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Descubre, compara y saborea con confianza.',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: blueGray,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Encuentra las mejores reseñas de restaurantes a tu alrededor y descubre nuevos lugares para disfrutar.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: blueGray,  // Usamos el color de la paleta
              ),
              onPressed: () {
                // Navegar a otra pantalla o realizar otra acción
              },
              child: Text(
                'Explorar Restaurantes',
                style: TextStyle(color: Colors.white),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
