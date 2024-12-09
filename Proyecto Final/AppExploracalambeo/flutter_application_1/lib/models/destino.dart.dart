class Destino {
  final String nombre;
  final String descripcion;
  final String imagenUrl;
  final List<String> imagenesAdicionales; // Lista de imágenes para rotar

  Destino({
    required this.nombre,
    required this.descripcion,
    required this.imagenUrl,
    required this.imagenesAdicionales,
  });
}
