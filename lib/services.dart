import 'dart:io';

class Services {
  //Atributos
  String? opcao;
  late int temp;

  // Métodos
  void mainMenu() {
    print('''
      1. Cadastrar uma nova empresa
      2. Buscar Empresa cadastrada por CNPJ
      3. Buscar Empresa por CPF/CNPJ do Sócio
      4. Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social)
      5. Excluir uma empresa (por ID)
      6. Sair
    ''');
    print('Selecione uma opção:');
    opcao = stdin.readLineSync()!;
    validaEscolha(opcao);
  }

  String? validaEscolha(opcao) {
    while (opcao == '' || opcao == null) {
      print(opcaoInvalida());
      opcao = stdin.readLineSync();
    }
    return opcao;
  }

  int validaInt(numOpcao) {
    while (numOpcao == null) {
      opcaoInvalida();
      print('Insira Somente Números: ');
      numOpcao = int.tryParse(stdin.readLineSync()!);
    }
    return numOpcao;
  }

  String opcaoInvalida() {
    return 'Opção inválida, tente novamente!';
  }
}
