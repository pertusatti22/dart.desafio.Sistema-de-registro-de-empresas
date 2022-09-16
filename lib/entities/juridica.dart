import 'package:dart/entities/pessoa.dart';

class Juridica extends Pessoa {
  // Atributos
  String? razaoSocial;
  String? nomeFantasia;
  String? cnpj;

  // Constructor
  Juridica({
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.cnpj,
    required super.endereco,
  });

  @override
  String? apresentar() {
    return '''
        CNPJ: $cnpj
        Razão Social: $razaoSocial
        Nome Fantasia: $nomeFantasia
        ${super.apresentar()}
        ''';
  }
}
