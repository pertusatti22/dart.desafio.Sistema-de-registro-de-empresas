import 'dart:io';

class Services {
  //Atributos
  String? escolha;

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
    escolha = stdin.readLineSync()!;
    validaEscolha(escolha);
  }

  String? validaEscolha(escolha) {
    while (escolha == '' || escolha == null) {
      print(escolhaInvalida());
    }
    return escolha;
  }

  String escolhaInvalida() {
    return 'Opção inválida, tente novamente!';
  }
}
