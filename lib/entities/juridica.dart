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
    return '''CNPJ: ${formatar()}
                Razão Social: $razaoSocial
                Nome Fantasia: $nomeFantasia
                ${super.apresentar()}
        ''';
  }

  @override
  String? identificacao() {
    return '$cnpj';
  }

  @override
  String? formatar() {
    return '${cnpj!.substring(0, 2)}.${cnpj!.substring(2, 5)}.${cnpj!.substring(5, 8)}/${cnpj!.substring(8, 12)}-${cnpj!.substring(12, 14)}';
  }
}
