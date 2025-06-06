void main() {
  List<int> lista = [1, 2, 2, 3, 3, 4, 1, 5];
  List<int> listaUnica = lista.toSet().toList();
  print(listaUnica);  
}
