import 'dart:io';

import 'package:dart/entities/endereco.dart';

import '../services.dart';

class EnderecoController {
  Services services = Services();
  String? input;

  Endereco cadastrarEndereco() {
    print("Logradouro: ");
    input = stdin.readLineSync();
    String logradouro = services.validaEscolha(input)!;

    print("Número: ");
    input = stdin.readLineSync();
    String numero = services.validaEscolha(input)!;

    print("Complemento: ");
    input = stdin.readLineSync();
    String complemento = services.validaEscolha(input)!;

    print("Bairro: ");
    input = stdin.readLineSync();
    String bairro = services.validaEscolha(input)!;

    print("Estado: ");
    input = stdin.readLineSync();
    String estado = services.validaEscolha(input)!;

    print("CEP: ");
    int? temp = int.tryParse(stdin.readLineSync()!);
    temp = services.validaInt(temp);
    String cep = temp.toString();

    return Endereco(
        logradouro: logradouro,
        numero: numero,
        complemento: complemento,
        bairro: bairro,
        estado: estado,
        cep: cep);
  }
}
