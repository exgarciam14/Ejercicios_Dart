
import 'Clases/Biblioteca.dart' show Biblioteca;
import 'Clases/Libro.dart';

void main(){
  print("Agregar libro Inicio");

  Biblioteca miBiblioteca = Biblioteca();

  //Popular la lista
  miBiblioteca.AgregarLibro(Libro(
    titulo: "Cien años de soledad",
    autor: "Gabriel Garcia Marquez",
    anioPublicacion: 2025,
  ));

  miBiblioteca.AgregarLibro(Libro(
    titulo: "1984",
    autor: "George Orwell",
    anioPublicacion: 1949,
  ));

  miBiblioteca.AgregarLibro(Libro(
    titulo: "El nombre de la rosa",
    autor: "Umberto Eco",
    anioPublicacion: 1980,
  ));

  miBiblioteca.AgregarLibro(Libro(
    titulo: "Rayuela",
    autor: "Umberto Eco",
    anioPublicacion: 1963,
  ));

  miBiblioteca.AgregarLibro(Libro(
    titulo: "Don Quijote de la Mancha",
    autor: "Miguel de Cervantes",
    anioPublicacion: 1605,
  ));

  print("Fin");



  
  print("Listar Libros ordenados por año");
  //Listar la lista por año de publicacion
  List<Libro> libros = miBiblioteca.ListarLibros();
  libros.forEach((element) =>  
    print("Titulo:${element.titulo} - Autor:${element.autor} - Año de publicación:${element.anioPublicacion}")
  );
  print("\n \n \n \n");

  //Buscar el libro
  List<Libro>? librosPorAutor = miBiblioteca.BuscarLibroPorAutor("UMBERTO ECO");

  print("Buscando libro por autor... ");
  if(librosPorAutor == null){
    print("El libro no fue encontrado con los datos digitados");
  }else{
    print("¡Libro encontrado!");
    librosPorAutor.forEach((element) => 
    print("Titulo:${element.titulo} - Autor:${element.autor} - Año de publicación:${element.anioPublicacion}")
    );
  }

  print("\n \n \n \n");

  miBiblioteca.EliminarLibro(Libro(
    titulo: "Rayuela",
    autor: "Julio Cortázar",
    anioPublicacion: 1963,
  ));

   print("Listar libros luego de haber eliminado un libro");
  //Listar la lista por año de publicacion, pero ya con el libro eliminado
  List<Libro> libros2 = miBiblioteca.ListarLibros();
  libros2.forEach((element) =>  
    print("Titulo:${element.titulo} - Autor:${element.autor} - Año de publicación:${element.anioPublicacion}")
  );

}