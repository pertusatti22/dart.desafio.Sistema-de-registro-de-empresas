import 'package:dart/models/juridica.dart';
import 'package:dart/models/pessoa.dart';
import 'package:uuid/uuid.dart';

class Empresa {
  // Atributos

  var id = Uuid().v4();
  Juridica? juridica;
  String? telefone;
  final createdAt = DateTime.now();
  Pessoa? socio;

  Empresa(this.id, this.juridica, this.telefone, this.socio);

  void cadastrarEmpresa() {
    print('Razão Social: ');

    print('Nome Fantasia: ');

    print('CNPJ: ');

    print('Endereço: ');

    print('Logradouro: ');

    print('Número: ');

    print('Complemento: ');

    print('Bairro: ');

    print('Estado: ');

    print('CEP: ');

    print('Telefone: ');

    print('Sócio: ');
  }
}
