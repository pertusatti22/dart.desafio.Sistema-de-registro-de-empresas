import 'dart:io';

import 'package:dart/controller/endereco_controller.dart';
import 'package:dart/controller/socio_controller.dart';
import 'package:dart/entities/empresa.dart';
import 'package:dart/entities/pessoa.dart';
import 'package:dart/services.dart';

import '../entities/fisica.dart';
import '../entities/juridica.dart';

class EmpresaController {
  Services services = Services();
  EnderecoController enderecoController = EnderecoController();
  SocioController socioController = SocioController();
  String? input;

  Empresa cadastrarEmpresa() {
    print('Cadastrar nova Empresa: ');
    var juridica = _cadastrarPessoaJuridica();

    print('Telefone: ');
    int? temp = int.tryParse(stdin.readLineSync()!);
    temp = services.validaInt(temp);
    String telefone = temp.toString();

    print('Cadastrar Sócio');
    print(
        'Digite 1 para sócio pessoa física ou 2 para sócio pessoa jurídica: ');
    input = stdin.readLineSync();
    String? opcao = services.validaEscolha(input);
    late Pessoa socio;
    if (opcao == '1') {
      Fisica temp = socioController.cadastrarSocioPessoaFisica();
      socio = temp;
    } else if (opcao == '2') {
      Juridica temp = socioController.cadastrarSocioPessoaJuridica();
      socio = temp;
    } else {
      print(services.opcaoInvalida());
    }

    return Empresa(juridica: juridica, telefone: telefone, socio: socio);
  }

  Juridica _cadastrarPessoaJuridica() {
    print("Razão Social: ");
    input = stdin.readLineSync();
    String razaoSocial = services.validaEscolha(input)!;

    print("Nome Fantasia: ");
    input = stdin.readLineSync();
    String nomeFantasia = services.validaEscolha(input)!;

    print("CNPJ: ");
    int? temp = int.tryParse(stdin.readLineSync()!);
    temp = services.validaInt(temp);
    while (temp.toString().length != 14) {
      print('Insira 14 digitos!');
      temp = int.tryParse(stdin.readLineSync()!);
    }
    String cnpj = temp.toString();

    print('Endereço da Empresa: ');
    var endereco = enderecoController.cadastrarEndereco();

    return Juridica(
        razaoSocial: razaoSocial,
        nomeFantasia: nomeFantasia,
        cnpj: cnpj,
        endereco: endereco);
  }
}
