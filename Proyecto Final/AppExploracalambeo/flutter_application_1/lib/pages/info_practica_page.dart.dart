import 'package:flutter/material.dart';

class InfoPracticaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información Práctica'),
        backgroundColor: Colors.green[600], // Ajusta el color del AppBar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Introducción
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Bienvenido a la sección de Información Práctica para explorar Calambeo, un destino natural lleno de belleza y actividades ecoamigables.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
            ),

            // Clima
            _buildSectionTitle('Clima'),
            _buildSectionContent(
              'El clima en Calambeo es templado con temperaturas promedio entre 18°C y 25°C durante todo el año. Las lluvias son frecuentes de abril a noviembre, por lo que es recomendable llevar ropa impermeable o un paraguas durante estos meses. '
              'Las mejores épocas para visitar son durante la temporada seca de diciembre a marzo, cuando el clima es más cálido y soleado.',
            ),
            SizedBox(height: 16),

            // Cómo Llegar
            _buildSectionTitle('Cómo Llegar'),
            _buildSectionContent(
              'Calambeo se encuentra ubicado a solo 30 minutos en automóvil desde la ciudad de Ibagué, en el departamento de Tolima. '
              'Desde Ibagué, puedes tomar un taxi o transporte público hacia el área rural, siguiendo las indicaciones hacia el sector de la vereda La Honda.\n\n'
              'Si vienes desde Bogotá, puedes tomar un autobús desde la terminal de transporte de Bogotá hasta Ibagué y, desde allí, tomar transporte local a Calambeo.',
            ),
            SizedBox(height: 16),

            // Consejos de Seguridad
            _buildSectionTitle('Consejos de Seguridad'),
            _buildSectionContent(
              '1. Mantén siempre tus pertenencias personales seguras y a la vista, especialmente en áreas de alta afluencia turística.\n\n'
              '2. Si vas a realizar actividades de senderismo o caminatas, es recomendable ir acompañado de un guía local para mayor seguridad.\n\n'
              '3. En las zonas rurales, respeta las señales y normas locales, y sigue siempre las indicaciones de los residentes para evitar problemas o accidentes.\n\n'
              '4. Evita salir en áreas solitarias al atardecer y toma precauciones en cuanto a la fauna local.\n\n'
              '5. Lleva protector solar y repelente de insectos, ya que en algunas áreas pueden existir insectos como mosquitos.\n',
            ),
            SizedBox(height: 16),

            // Recomendaciones para el Ecoturismo
            _buildSectionTitle('Recomendaciones para el Ecoturismo'),
            _buildSectionContent(
              '1. Respeta la fauna y flora local: No alimentes ni molestes a los animales. Calambeo es un lugar con una biodiversidad increíble y es importante mantener el equilibrio natural.\n\n'
              '2. Minimiza tu huella ecológica: Recoge siempre tu basura y no dejes residuos en los senderos ni en los puntos turísticos.\n\n'
              '3. Apoya a los negocios locales: Muchas de las actividades turísticas en Calambeo están impulsadas por emprendimientos locales que promueven el turismo responsable y la sostenibilidad.\n\n'
              '4. Si es posible, viaja en grupo o utiliza transporte público para reducir el impacto ambiental.\n\n'
              '5. Evita el uso de plásticos de un solo uso y opta por productos reutilizables como botellas y bolsas ecológicas.',
            ),
            SizedBox(height: 16),

            // Información de Contacto
            _buildSectionTitle('Información de Contacto'),
            _buildSectionContent(
              'Para más información sobre actividades turísticas, recomendaciones o emergencias, puedes contactar con las siguientes organizaciones locales:\n\n'
              'Centro de Información Turística Calambeo:\n'
              'Teléfono: +57 123 456 789\n'
              'Correo electrónico: info@exploracalambeo.com\n\n'
              'Guardia Ambiental Local:\n'
              'Teléfono de emergencias: 123 456 789\n',
            ),
          ],
        ),
      ),
    );
  }

  // Widget para la sección de título
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green[700]),
      ),
    );
  }

  // Widget para la sección de contenido
  Widget _buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        content,
        style: TextStyle(fontSize: 14, color: Colors.black87),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
