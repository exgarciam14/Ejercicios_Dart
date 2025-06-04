import 'Libro.dart';

class Biblioteca{
  final List<Libro> libros = [];

  //Metodo para agregar un libro
  void AgregarLibro(Libro libro) {
    libros.add(libro);
  }

  //Metodo para Eliminar un libro
  void EliminarLibro(Libro libro) {
    libros.removeWhere( (element) => element.titulo == libro.titulo &&
          element.autor == libro.autor &&
          element.anioPublicacion == libro.anioPublicacion);
  }

  //Metodo para Buscar un libro por autor
 List<Libro>? BuscarLibroPorAutor(String autor) {
   final List<Libro> librosAutor = libros.where((element) => element.autor.trim().toLowerCase() == autor.trim().toLowerCase()).toList();
    return librosAutor;
  }

  //Metodo para listar los libros ordenados por el año de publicacion
  List<Libro> ListarLibros() {
    libros.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    return libros;
  }

}