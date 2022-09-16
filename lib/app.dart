import 'dart:io';

import 'package:dart/services.dart';

import 'database/database.dart';
import 'database/mock.dart';

class App {
  var database = Database();
  String? temp;
  Services services = Services();
  Mock mock = Mock();

  void app() {
    database.database.add(mock.empresa1);
    database.database.add(mock.empresa2);

    while (true) {
      print('Bem-Vindo a nosso Sistema de empresas');
      services.mainMenu();
      if (services.opcao == '1') {
        database.addEmpresa();
        print('Empresa adicionada com Sucesso!');
      } else if (services.opcao == '2') {
        print("Digite o CNPJ: ");
        temp = stdin.readLineSync();
        String cnpj = services.validaEscolha(temp)!;
        database.showEmpresaCnpj(cnpj);
        print('Empresa encontrada com Sucesso!');
      } else if (services.opcao == '3') {
        print("Digite o CPF/CNPJ: ");
        temp = stdin.readLineSync();
        String socio = services.validaEscolha(temp)!;
        database.showEmpresaSocio(socio);
        print('Empresa encontrada com Sucesso!');
      } else if (services.opcao == '4') {
        database.listarEmpresas();
        print('Empresas listadas com Sucesso!');
      } else if (services.opcao == '5') {
        print("Digite o ID da empresa: ");
        temp = stdin.readLineSync();
        String id = services.validaEscolha(temp)!;
        database.removeEmpresa(id);
        print('Empresa removida com sucesso!');
      } else if (services.opcao == '6') {
        print('Sair');
        break;
      } else {
        print(services.opcaoInvalida());
      }
    }
  }
}
