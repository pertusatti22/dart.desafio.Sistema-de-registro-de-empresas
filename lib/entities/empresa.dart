import 'package:dart/entities/pessoa.dart';
import 'package:uuid/uuid.dart';

import 'juridica.dart';

class Empresa {
  // Atributos

  var id = Uuid().v4();
  final createdAt = DateTime.now();
  late Juridica juridica;
  late String telefone;
  late Pessoa socio;

  Empresa(
      {required this.juridica, required this.telefone, required this.socio});

  String? apresentar() {
    print(' ');
    return '''ID: $id
                CNPJ ${juridica.cnpj} Data Cadastro: $createdAt
                Razão Social: ${juridica.razaoSocial}
                Nome Fantasia: ${juridica.nomeFantasia}
                Telefone: $telefone
                Endereço: ${juridica.endereco.showEndereco()}''';
  }
}
