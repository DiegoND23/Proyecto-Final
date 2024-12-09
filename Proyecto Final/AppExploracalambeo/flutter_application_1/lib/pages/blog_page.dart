import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog - Explora Calambeo'),
        backgroundColor: Colors.green, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Título del Blog
            Text(
              'Bienvenidos a Explora Calambeo: Turismo Ecológico en su Máxima Expresión',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // Introducción
            Text(
              '¡Hola, exploradores! Si estás buscando un destino lleno de belleza natural, cultura y una experiencia ecoamigable, Calambeo es el lugar para ti. Con nuestro nuevo aplicativo móvil, Explora Calambeo, podrás descubrir todo lo que este increíble corredor turístico tiene para ofrecer mientras apoyas prácticas sostenibles y responsables con el medio ambiente.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),

            // ¿Qué es Calambeo?
            Text(
              '¿Qué es Calambeo?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Calambeo es una joya natural ubicada cerca de la ciudad de Ibagué, Colombia. Es conocido por su impresionante biodiversidad, rutas ecológicas, ríos cristalinos y la calidez de su gente. Este destino, perfecto para los amantes de la naturaleza, ofrece una variedad de actividades que promueven el turismo ecológico, desde senderismo y observación de aves, hasta visitas a pequeños emprendimientos locales que siguen principios de sostenibilidad.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),

            // Sección de Turismo Ecológico
            Text(
              'Turismo Ecológico: Explora con Responsabilidad',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'El turismo ecológico se ha vuelto una tendencia esencial en todo el mundo, y Calambeo no es la excepción. En Explora Calambeo, queremos que tu visita no solo sea memorable, sino que también ayude a proteger y conservar el entorno natural. Aquí tienes algunas prácticas de turismo responsable que promovemos:',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),

            // Lista de recomendaciones de turismo responsable
            ListTile(
              leading: Icon(Icons.check_circle_outline, color: Colors.green),
              title: Text('Respeta la fauna y flora: No extraigas plantas ni molestes a los animales.'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle_outline, color: Colors.green),
              title: Text('Minimiza tu huella ecológica: Utiliza rutas designadas y evita generar desechos.'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle_outline, color: Colors.green),
              title: Text('Apoya a los emprendimientos locales: Compra productos locales que promuevan la sostenibilidad.'),
            ),
            SizedBox(height: 20),

            // ¿Qué Puedes Encontrar en Explora Calambeo?
            Text(
              '¿Qué Puedes Encontrar en Explora Calambeo?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Nuestro aplicativo móvil te permite acceder a información detallada sobre los mejores sitios turísticos en Calambeo, rutas recomendadas para disfrutar de la naturaleza, emprendimientos locales y mucho más.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),

            // Lista de características de la app
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.green),
              title: Text('Rutas turísticas: Senderos ecológicos más populares para disfrutar de la naturaleza.'),
            ),
            ListTile(
              leading: Icon(Icons.eco, color: Colors.green),
              title: Text('Turismo ecoamigable: Consejos sobre cómo viajar de manera sostenible.'),
            ),
            ListTile(
              leading: Icon(Icons.local_activity, color: Colors.green),
              title: Text('Emprendimientos locales: Productos locales, artesanías, y alimentos orgánicos.'),
            ),
            ListTile(
              leading: Icon(Icons.photo, color: Colors.green),
              title: Text('Fotografías y videos impresionantes: Paisajes más emblemáticos de Calambeo.'),
            ),
            SizedBox(height: 20),

            // Llamado a la acción
            Text(
              'Únete al Movimiento',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'En Explora Calambeo, creemos que viajar puede cambiar el mundo si lo hacemos con conciencia. Nuestra misión es conectar a los viajeros con la naturaleza y las comunidades locales de una manera que promueva la conservación y el respeto mutuo. Te invitamos a descargar nuestra aplicación y comenzar a explorar este increíble destino.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
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
                      child: Text('Visita El corredor', style: TextStyle(fontSize: 18)),
                    ),
            SizedBox(height: 30),

            // Fin xd
            Text(
              '¡Gracias por leer! Esperamos verte pronto en Calambeo.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
