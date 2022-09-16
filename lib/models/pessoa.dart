import 'package:dart/models/endereco.dart';

abstract class Pessoa {
  // Atributos
  Endereco? endereco;

  // Métodos
  Pessoa(this.endereco);
}
