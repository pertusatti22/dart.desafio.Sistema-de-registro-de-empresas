import 'dart:convert';
import 'dart:io';

import 'package:dart/entities/fisica.dart';
import 'package:dart/entities/juridica.dart';
import 'package:dart/services.dart';

import 'endereco_controller.dart';

class SocioController {
  Services services = Services();
  EnderecoController enderecoSocio = EnderecoController();
  String? input;

  Fisica cadastrarSocioPessoaFisica() {
    print("Nome do Sócio: ");
    input = stdin.readLineSync();
    String nome = services.validaEscolha(input)!;

    print("CPF do Sócio: ");
    int? temp = int.tryParse(stdin.readLineSync()!);
    temp = services.validaInt(temp);
    String cpf = temp.toString();

    print('Endereço do Sócio: ');
    var endereco = enderecoSocio.cadastrarEndereco();

    return Fisica(nome: nome, cpf: cpf, endereco: endereco);
  }

  Juridica cadastrarSocioPessoaJuridica() {
    print("Razão Social do Sócio: ");
    input = stdin.readLineSync(encoding: utf8);
    String razaoSocial = services.validaEscolha(input)!;

    print("Nome Fantasia do Sócio: ");
    input = stdin.readLineSync(encoding: utf8);
    String nomeFantasia = services.validaEscolha(input)!;

    print("CNPJ do Sócio: ");
    int? temp = int.tryParse(stdin.readLineSync()!);
    temp = services.validaInt(temp);
    String cnpj = temp.toString();

    print('Endereço do Sócio: ');
    var endereco = enderecoSocio.cadastrarEndereco();

    return Juridica(
        razaoSocial: razaoSocial,
        nomeFantasia: nomeFantasia,
        cnpj: cnpj,
        endereco: endereco);
  }
}
