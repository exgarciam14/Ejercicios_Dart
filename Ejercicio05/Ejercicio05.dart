import 'Clases/CuentaBancaria.dart';

void main() {
  // Crear una cuenta bancaria para "Eduardo Garcia"
  CuentaBancaria cuenta = CuentaBancaria(titular: "Eduardo Garcia");

  // Depositar 1000
  cuenta.depositar(1000);
  print("Deposita 1000: ${cuenta.consultarSaldo()}");

  // Retirar 300
  cuenta.retirar(300);
  print("Retirar 300: ${cuenta.consultarSaldo()}");

  // Consultar saldo final
  double saldoFinal = cuenta.consultarSaldo();
  print("Consulta saldo final ${cuenta.titular}: $saldoFinal");

  // Retirar mas de lo que tiene Eduardo
  try{
    cuenta.retirar(1000);
    print("Retirar 300: ${cuenta.consultarSaldo()}");
  }catch(ex){
    print("${ex}");
  }

  // Monto a depositar menor a 0
  try{
    cuenta.depositar(-1);
  }catch(ex){
    print("${ex}");
  }

  // Monto a retirar menor a 0
  try{
    cuenta.retirar(-1);
  }catch(ex){
    print("${ex}");
  }
  
}