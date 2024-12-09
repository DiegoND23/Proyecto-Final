import 'dart:async'; // Para usar Timer
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/destino.dart.dart'; // Asegúrate de importar el modelo

class DestinoDetailPage extends StatefulWidget {
  final Destino destino;

  DestinoDetailPage({required this.destino});

  @override
  _DestinoDetailPageState createState() => _DestinoDetailPageState();
}

class _DestinoDetailPageState extends State<DestinoDetailPage> {
  late int _currentImageIndex; // Índice de la imagen actual
  late Timer _timer; // Timer para cambiar la imagen cada 5 segundos

  @override
  void initState() {
    super.initState();
    _currentImageIndex = 0; // Inicializamos en la primera imagen

    // Crear el Timer que se ejecuta cada 5 segundos
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        _currentImageIndex = (_currentImageIndex + 1) % widget.destino.imagenesAdicionales.length;
      });
    });
  }

  @override
  void dispose() {
    // Cancelamos el Timer cuando se sale de esta página
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destino.nombre),
        backgroundColor: Colors.green[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Imagen rotatoria
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                widget.destino.imagenesAdicionales[_currentImageIndex], // Imagen en el índice actual
                fit: BoxFit.cover,
                height: 250,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.destino.descripcion,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
