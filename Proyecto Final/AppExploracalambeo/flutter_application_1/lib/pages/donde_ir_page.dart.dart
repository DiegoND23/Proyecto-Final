import 'package:flutter/material.dart';
import 'package:flutter_application_1/destino_detail_page.dart';
import 'package:flutter_application_1/models/destino.dart.dart';

class DondeIrPage extends StatelessWidget {
  final List<Destino> destinos = [
    Destino(
      nombre: 'Jardín Botánico San Jorge',
      descripcion:
          'El Jardín Botánico San Jorge es un espacio natural dedicado a la conservación y divulgación de la biodiversidad local.\n'
          'Ubicado en Ibagué, Colombia, se extiende sobre una colina que ofrece vistas panorámicas de la ciudad y de los paisajes montañosos que la rodean.\n'
          'Este jardín botánico se destaca por su rica colección de plantas nativas, incluyendo especies endémicas y en peligro de extinción, que promueven la conservación de los ecosistemas locales.\n'
          'El jardín también cuenta con senderos ecológicos ideales para caminatas, donde los visitantes pueden aprender sobre la flora y fauna de la región a través de recorridos guiados.\n'
          'Además, su diseño incluye espacios dedicados a la educación ambiental y actividades recreativas, siendo un destino perfecto para aquellos interesados en la naturaleza y el ecoturismo.\n'
          'Dirección: Carrera 5 # 52-26, Ibagué, Tolima, Colombia\n'
          'Teléfono: (8) 263 5101 / (8) 263 3361\n'
          'Horarios de apertura:\n'
          'Lunes a Viernes: 8:00 AM a 5:00 PM\n'
          'Sábados: 8:00 AM a 12:00 PM\n'
          'Domingos y Festivos: Cerrado\n',
      imagenUrl: 'https://i.imgur.com/fyGMxeC.jpeg', //ok
      imagenesAdicionales: [
        'https://i.imgur.com/fwl1FA1.jpeg', //ok
        'https://i.imgur.com/do57kmM.jpeg', //ok
        'https://i.imgur.com/DZfz5WR.jpeg', //ok
        'https://i.imgur.com/kMIAAGq.jpeg', //ok
        'https://i.imgur.com/djo6Azu.png', //ok
      ],
    ),
    Destino(
      nombre: 'Autóctonos comida típica rural',
      descripcion:
          'En lo alto de una majestuosa montaña, donde los susurros del viento se entrelazan con las melodías de la naturaleza, se erige Autóctonos, un restaurante que captura la esencia más pura de la tradición rural.\n'
          'Desde su terraza, se despliega ante los ojos un panorama cautivador: la ciudad de Ibagué, con su mezcla vibrante de modernidad y naturaleza, se vislumbra como una pintura viviente en el horizonte.\n'
          'Autóctonos no es solo un lugar para degustar comida, es una inmersión en la autenticidad de los sabores locales, en cada plato preparado con el esmero de las recetas que han pasado de generación en generación.\n'
          'Aquí, los ingredientes cobran vida, la tierra respira a través de cada bocado, y el visitante es transportado a un tiempo donde lo rústico y lo genuino son reyes.\n'
          'Dirección: FQ69+84, Ibagué, Tolima, Colombia\n'
          'Teléfono: 316 641 2601\n'
          'Horarios de apertura:\n'
          'Lunes a Viernes: Cerrado\n'
          'Sábados: 4:30 PM a 8:30 PM\n'
          'Domingos: 11:30 AM a 5:00 PM\n'
          'Tipo de comida: Gastronomía tradicional de la región del Tolima, con énfasis en ingredientes autóctonos y platos típicos.\n',
      imagenUrl: 'https://i.imgur.com/wF41wUG.jpeg', //ok
      imagenesAdicionales: [
        'https://i.imgur.com/AN2Sw7y.jpeg', //ok
        'https://i.imgur.com/5cDfVIK.jpeg', //ok
        'https://i.imgur.com/X81azrW.jpeg', //ok
        'https://i.imgur.com/6AmTbpL.jpeg', //ok
        'https://i.imgur.com/M6kpvKZ.jpeg', //ok
      ],
    ),
    Destino(
      nombre: 'Mirador Tesorito',
      descripcion:
          'En lo alto de las montañas de Ibagué, donde las nubes se funden con el horizonte y el cielo se extiende como un manto infinito, se alza el imponente Mirador Tesorito, un balcón natural que revela la grandeza de los paisajes tolimenses.\n'
          'Desde este punto, el mundo parece detenerse, y ante tus ojos se despliega una vista inigualable, que captura la esencia pura de la naturaleza en todo su esplendor.\n'
          'El Mirador Tesorito no es solo un lugar para admirar la belleza, es un refugio para el alma, un rincón donde la inmensidad del paisaje se fusiona con la paz interior.\n'
          'Teléfono: 313 821 1314\n'
          'Horarios de apertura:\n'
          'Lunes a Domingo: 7:00 AM a 10:30 PM\n',
      imagenUrl: 'https://i.imgur.com/U1kEukh.jpeg', //ok
      imagenesAdicionales: [
        'https://i.imgur.com/0qPuwu9.jpeg', //ok
        'https://i.imgur.com/n2O3eEz.jpeg', //ok
        'https://i.imgur.com/nQLcjKz.jpeg', //ok
        'https://i.imgur.com/dBd7yAU.jpeg', //ok
        'https://i.imgur.com/NnduLzU.jpeg', //ok
      ],
    ),

    Destino(
      nombre: 'Mirador de Calambeo',
      descripcion:
          'El Mirador de Calambeo es un balcón natural emblemático ubicado en las montañas de Calambeo, desde donde se puede disfrutar de vistas espectaculares de Ibagué y los paisajes montañosos del Tolima.\n'
          'Ofrece una panorámica completa de la ciudad, rodeada de montañas, y en días despejados se puede ver hasta el Parque Nacional Natural Los Nevados. Es un lugar ideal para los amantes de la fotografía y para quienes buscan tranquilidad en un entorno natural.\n'
          'Los atardeceres desde el mirador son impresionantes, y el área cuenta con bancos y espacios de descanso para relajarse mientras se disfruta del paisaje.\n'
          'Además, su cercanía a otros atractivos como el Sendero Ecológico de Calambeo y la Cascada de los Pozos lo convierten en un excelente punto de partida para explorar la región.\n'
          'Es un destino imperdible para quienes buscan una experiencia visual y emocional única en el corazón de Tolima.',
      imagenUrl: 'https://i.imgur.com/YLrGADS.jpeg',
      imagenesAdicionales: [
        'https://i.imgur.com/UVjpXqu.jpeg', //ok
        'https://i.imgur.com/h5lnLvR.jpeg', //ok
        'https://i.imgur.com/RXcTZIy.jpeg', //ok
        'https://i.imgur.com/rNk7kzr.jpeg', //ok
        'https://i.imgur.com/97Cx1Aa.jpeg', //ok
      ],
    ),
    // aqui puedo añadir mas destinos por si los necesito xd
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('¿Dónde Ir?'),
        backgroundColor: Colors.green[600],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75, // Ajusta la relación de aspecto
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: destinos.length,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DestinoDetailPage(destino: destinos[index]),
                ),
              );
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Usamos un `Flexible` para que las imágenes no causen un desbordamiento
                  Flexible(
                    flex: 3, // Controla cuánto espacio debe ocupar la imagen
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image.network(
                        destinos[index].imagenUrl.isNotEmpty
                            ? destinos[index].imagenUrl
                            : 'https://via.placeholder.com/150',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      destinos[index].nombre,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green[700],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
