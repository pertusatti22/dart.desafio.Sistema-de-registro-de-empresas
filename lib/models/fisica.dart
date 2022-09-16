import 'package:dart/models/pessoa.dart';

class Fisica extends Pessoa {
  // Atributos

  String? nome;
  String? cpf;

  // Métodos

  Fisica(this.nome, this.cpf, super.endereco);
}
