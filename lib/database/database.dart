import 'package:dart/controller/empresa_controller.dart';

import '../entities/empresa.dart';
import '../services.dart';

class Database {
  Services services = Services();
  EmpresaController empresaController = EmpresaController();
  List<Empresa> database = [];
  var temp;

  void addEmpresa() {
    temp = empresaController.cadastrarEmpresa();
    database.add(temp);
  }

  void showEmpresaCnpj(String cnpj) {
    for (var empresa in database) {
      if (empresa.juridica.cnpj == cnpj) {
        print('${apresentarDados(empresa)}');
      } else {
        services.opcaoInvalida();
      }
    }
  }

  void showEmpresaSocio(String socio) {
    for (var empresa in database) {
      if (empresa.socio.identificacao() == socio) {
        print('${apresentarDados(empresa)}');
      } else {
        services.opcaoInvalida();
      }
    }
  }

  void removeEmpresa(String id) {
    database.removeWhere((empresa) => empresa.id == id);
  }

  void listarEmpresas() {
    database.sort(
        (a, b) => a.juridica.razaoSocial!.compareTo(b.juridica.razaoSocial!));
    for (var empresa in database) {
      {
        print('${apresentarDados(empresa)}');
      }
    }
  }

  String? apresentarDados(empresa) {
    return '''
                ${empresa.apresentar()}
                Sócio:
                ${empresa.socio.apresentar()}
                ________________________________________________________________
              ''';
  }
}
