import 'dart:io';

import 'package:dart/services.dart';

import 'database/database.dart';

class App {
  var database = Database();
  Services services = Services();

  void app() {
    while (true) {
      print('Bem-Vindo a nosso Sistema de empresas');
      services.mainMenu();
      if (services.escolha == '1') {
        database.addEmpresa();
      } else if (services.escolha == '2') {
        print("Digite o CNPJ: ");
        var input = stdin.readLineSync();
        String cnpj = services.validaEscolha(input)!;
        database.showEmpresaCnpj(cnpj);
      } else if (services.escolha == '3') {
        print('3');
      } else if (services.escolha == '4') {
        print('4');
      } else if (services.escolha == '5') {
        print('5');
      } else if (services.escolha == '6') {
        print('Sair');
        break;
      } else {
        print(services.escolhaInvalida());
      }
    }
  }
}
