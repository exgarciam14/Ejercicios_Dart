class CuentaBancaria{
  final String titular;
  double saldo = 0;

  CuentaBancaria({required this.titular});

   void depositar(double monto) {
    if (monto <= 0) {
      throw Exception("El monto a depositar debe ser mayor que 0");
    }
    saldo += monto;
  }

  void retirar(double monto) {
    if (monto <= 0) {
      throw Exception("El monto a retirar debe ser mayor que 0");
    }
    if (monto > saldo) {
      throw Exception("Saldo insuficiente");
    }
    saldo -= monto;
  }

  double consultarSaldo() {
    return saldo;
  }

}