import 'package:dart/models/pessoa.dart';

class Juridica extends Pessoa {
  // Atributos

  String? razaoSocial;
  String? nomeFantasia;
  String? cnpj;

  // Métodos

  Juridica(this.razaoSocial, this.nomeFantasia, this.cnpj, super.endereco);
}
