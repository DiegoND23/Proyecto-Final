import 'package:flutter/material.dart';

class QueHacerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qué Hacer en Calambeo'),
        backgroundColor: Colors.green, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Título 1
            Text(
              'Actividades Imperdibles en Calambeo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

          
            Text(
              'Calambeo ofrece una variedad de actividades que te permitirán conectar con la naturaleza y descubrir la cultura local. A continuación, te presentamos algunas de las mejores experiencias para disfrutar en este paraíso ecológico.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
//informacion sobre el senderismo xd
            _buildActivitySection(
              'Senderismo por Rutas Ecológicas',
              'Recorre los senderos más hermosos de Calambeo. Desde caminatas tranquilas junto a ríos cristalinos hasta rutas desafiantes en medio de la selva tropical, cada sendero tiene su propia magia.',
              Icons.directions_walk,
              Colors.green[600]!,
            ),
            SizedBox(height: 20),

            // Observación de aves 
            _buildActivitySection(
              'Observación de Aves',
              'Calambeo es hogar de una gran diversidad de especies de aves. Conoce las aves locales y disfruta de la observación en su hábitat natural.',
              Icons.nature, // Cambié el ícono a Icons.nature
              Colors.orange[700]!,
            ),
            SizedBox(height: 20),

            // emprendimientos locales
            _buildActivitySection(
              'Visita a Emprendimientos Locales',
              'Apoya la economía local visitando los pequeños emprendimientos que practican la sostenibilidad. Compra productos orgánicos, artesanías y disfruta de la gastronomía local.',
              Icons.local_activity,
              Colors.blue[700]!,
            ),
            SizedBox(height: 20),

            // Noche estrellada
            _buildActivitySection(
              'Noche Estrellada en Calambeo',
              'Después de un día lleno de aventuras, disfruta de una noche mágica bajo el cielo despejado de Calambeo. Las vistas del firmamento son simplemente espectaculares.',
              Icons.nightlife,
              Colors.purple[600]!,
            ),
            SizedBox(height: 20),

            // Llamado a la acción
            Text(
              '¡Ven y vive la magia de Calambeo!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
           ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF388E3C), 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), 
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Lugares Recomendados');
                      },
                      child: Text('Descubre Tu Destino', style: TextStyle(fontSize: 18)),
                    ),
          ],
        ),
      ),
    );
  }

  // sección de actividad
  Widget _buildActivitySection(String title, String description, IconData icon, Color iconColor) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
              color: iconColor,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
