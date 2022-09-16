import 'endereco.dart';

abstract class Pessoa {
  // Atributos
  Endereco? endereco;

  // Constructor
  Pessoa({required this.endereco});

  // Métodos
  String? apresentar() {
    return endereco?.showEndereco();
  }
}
