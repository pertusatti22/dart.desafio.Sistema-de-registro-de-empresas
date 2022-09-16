import 'package:dart/entities/pessoa.dart';

class Fisica extends Pessoa {
  // Atributos
  String? nome;
  String? cpf;

  // Constructor
  Fisica({
    required this.nome,
    required this.cpf,
    required super.endereco,
  });

  @override
  String? apresentar() {
    return '''
        CPF: $cpf
        Nome Completo: $nome
        ${super.apresentar()}
        ''';
  }
}
