import 'package:dart/menu.dart';

import 'database/database.dart';

class App {
  var database = Database();
  var menu = Menu();

  void app() {
    while (true) {
      print('Bem-Vindo a nosso Sistema de empresas');
      menu.mainMenu();

      if (menu.escolha == '6') {
        print('Sair');
        break;
      } else {
        if (menu.escolha == '1') {
          print('Cadastrar nova empresa');
        } else if (menu.escolha == '2') {
          print('Buscar Empresa cadastrada por CNPJ');
        } else if (menu.escolha == '3') {
          print('Buscar Empresa por CPF/CNPJ do Sócio');
        } else if (menu.escolha == '4') {
          print(
              'Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social)');
        } else if (menu.escolha == '5') {
          print('Excluir uma empresa (por ID)');
        } else {
          print('Opção inválida, tente novamente!');
        }
      }
    }
  }
}
