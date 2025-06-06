class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado({required this.nombre, required this.puesto, required this.salario});
}

double calcularSalarioTotal(List<Empleado> lista) {
  double total = 0;
  for (var e in lista) {
    total += e.salario;
  }
  return total;
}

double calcularSalarioPromedio(List<Empleado> lista) {
  if (lista.isEmpty) return 0;
  return calcularSalarioTotal(lista) / lista.length;
}

void main() {
  List<Empleado> empleados = [
    Empleado(nombre: 'Ana', puesto: 'Desarrolladora', salario: 3000),
    Empleado(nombre: 'Luis', puesto: 'Diseñador',   salario: 2500),
    Empleado(nombre: 'Maria', puesto: 'Gerente',     salario: 4000),
  ];
  
  double total = calcularSalarioTotal(empleados);
  double promedio = calcularSalarioPromedio(empleados);
  
  print('Salario total: \$${total}');
  print('Salario promedio: \$${promedio}');
}
