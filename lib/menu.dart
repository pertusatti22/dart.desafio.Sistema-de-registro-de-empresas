import 'dart:io';

class Menu {
  //Atributos
  String? escolha;

  // Métodos
  String? mainMenu() {
    print('''
      1. Cadastrar uma nova empresa
      2. Buscar Empresa cadastrada por CNPJ
      3. Buscar Empresa por CPF/CNPJ do Sócio
      4. Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social)
      5. Excluir uma empresa (por ID)
      6. Sair
    ''');
    print('Selecione uma opção:');
    escolha = stdin.readLineSync()!;
    return escolha;
  }
}
