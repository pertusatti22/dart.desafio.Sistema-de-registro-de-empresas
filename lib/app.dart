import 'dart:io';

import 'package:dart/services.dart';

import 'database/database.dart';
import 'database/mock.dart';

class App {
  var database = Database();
  var temp;
  Services services = Services();
  Mock mock = Mock();

  void app() {
    database.database.add(mock.empresa1);
    database.database.add(mock.empresa2);

    while (true) {
      print('Bem-Vindo a nosso Sistema de empresas');
      services.mainMenu();
      if (services.escolha == '1') {
        database.addEmpresa();
      } else if (services.escolha == '2') {
        print("Digite o CNPJ: ");
        temp = stdin.readLineSync();
        String cnpj = services.validaEscolha(temp)!;
        database.showEmpresaCnpj(cnpj);
      } else if (services.escolha == '3') {
        print("Digite o CPF/CNPJ: ");
        temp = stdin.readLineSync();
        String socio = services.validaEscolha(temp)!;
        database.showEmpresaSocio(socio);
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
