import 'endereco.dart';

abstract class Pessoa {
  // Atributos
  late Endereco endereco;

  // Constructor
  Pessoa({required this.endereco});

  // Métodos
  String? apresentar() {
    return endereco.showEndereco();
  }

  String? identificacao() {
    return '';
  }

  String? formatar() {
    return '';
  }
}
