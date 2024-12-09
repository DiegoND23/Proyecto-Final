import 'dart:async';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentImageIndex = 0;
  List<String> imageUrls = [
    'https://i.imgur.com/hcDEEVW.jpeg',  // Imagen principal la 1
    'https://i.imgur.com/DFSnS5S.jpeg',  // Otra imagen la 2
    'https://i.imgur.com/n9Llzp0.png',  // Otra imagen la 3
    'https://i.imgur.com/jNqivYO.jpeg', // Otra imagen la 4
    'https://i.imgur.com/ainmzVv.jpeg',  // Otra imagen la 5
  ];

  // Cambiar la imagen cada 5 segundos
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        _currentImageIndex = (_currentImageIndex + 1) % imageUrls.length;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF4CAF50),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 40), 
            Text(
              'AppExploraCalambeo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Image.network(
              'https://i.imgur.com/DjhJ0uF.png',
              height: 50,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF388E3C), 
              ),
              child: Text(
                'Explora Calambeo',
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
ListTile(
  title: Text('Lugares Recomendados'),
  leading: Icon(Icons.place, color: Colors.orange[800]), 
  onTap: () => Navigator.pushNamed(context, '/Lugares Recomendados'),
),
ListTile(
  title: Text('Qué Hacer'),
  leading: Icon(Icons.explore, color: Colors.teal[700]), 
  onTap: () => Navigator.pushNamed(context, '/queHacer'),
),
ListTile(
  leading: Icon(Icons.info, color: Colors.blue[600]), 
  title: Text('Información Práctica'),
  onTap: () => Navigator.pushNamed(context, '/infoPractica'),
),
ListTile(
  leading: Icon(Icons.article_outlined, color: Colors.purple[600]), 
  title: Text('Blog'),
  onTap: () => Navigator.pushNamed(context, '/blog'),
),
ListTile(
  leading: Icon(Icons.search, color: Colors.grey[700]), 
  title: Text('Buscar'),
  onTap: () {},
),
ListTile(
  leading: Icon(Icons.account_circle, color: Colors.blueGrey[700]), 
  title: Text('Perfil'),
  onTap: () {},
),
ListTile(
  title: Text('Idioma: ES'),
  leading: Icon(Icons.language, color: Colors.green[700]), 
  onTap: () {},
),

          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: Image.network(
                imageUrls[_currentImageIndex],
                key: ValueKey<int>(_currentImageIndex),
                fit: BoxFit.cover, 
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(16.0),
              color: const Color.fromARGB(255, 47, 92, 189).withOpacity(0.4), // recordar que este es para cambiar el color de la sombra
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '¡Bienvenido a AppExploraCalambeo!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 27, 137, 180), 
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '¡Hola, exploradores! Si estás buscando un destino lleno de belleza natural, cultura y una experiencia ecoamigable, Calambeo es el lugar perfecto para ti. Aquí puedes disfrutar de una amplia variedad de actividades, desde explorar los paisajes más impresionantes hasta sumergirte en la cultura local. \n\n¡Comienza tu aventura ahora!',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF388E3C), 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), 
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Lugares Recomendados');
                      },
                      child: Text('Descubre más', style: TextStyle(fontSize: 18)),
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
