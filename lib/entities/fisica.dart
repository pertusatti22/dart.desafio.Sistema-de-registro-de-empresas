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
    return '''CPF: ${formatar()}
                Nome Completo: $nome
                ${super.apresentar()}
        ''';
  }

  @override
  String? identificacao() {
    return '$cpf';
  }

  @override
  String? formatar() {
    return '${cpf!.substring(0, 3)}.${cpf!.substring(3, 6)}.${cpf!.substring(6, 9)}-${cpf!.substring(9, 11)}';
  }
}
