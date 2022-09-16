import 'dart:io';

class Endereco {
  // Atributos
  late String logradouro;
  late String numero;
  late String complemento;
  late String bairro;
  late String estado;
  late String cep;
  late Map<String, String> enderecoCompleto;
  String? temp;

  // Métodos

  Map<String, String>? createEndereco() {
    print("Logradouro: ");
    logradouro = stdin.readLineSync()!;
    enderecoCompleto['logradouro'] = logradouro;

    print("Número: ");
    numero = stdin.readLineSync()!;
    enderecoCompleto['numero'] = numero;

    print("Complemento: ");
    complemento = stdin.readLineSync()!;
    enderecoCompleto['complemento'] = complemento;

    print("Bairro: ");
    bairro = stdin.readLineSync()!;
    enderecoCompleto['bairro'] = bairro;

    print("Estado: ");
    estado = stdin.readLineSync()!;
    enderecoCompleto['estado'] = estado;

    print("CEP: ");
    cep = stdin.readLineSync()!;
    enderecoCompleto['cep'] = cep;
    return enderecoCompleto;
  }
}
