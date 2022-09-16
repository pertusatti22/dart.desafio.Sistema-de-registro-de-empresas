import 'package:dart/controller/empresa_controller.dart';

import '../entities/empresa.dart';
import '../services.dart';

class Database {
  Services services = Services();
  EmpresaController empresaController = EmpresaController();
  List<Empresa> database = [];

  void addEmpresa() {
    var temp = empresaController.cadastrarEmpresa();
    database.add(temp);
  }

  void showEmpresaCnpj(String cnpj) {
    for (var empresa in database) {
      if (empresa.juridica?.cnpj == cnpj) {
        print('''
                ${empresa.apresentar()}
                Sócio:
                ${empresa.socio?.apresentar()}
              ''');
      } else {
        services.escolhaInvalida();
      }
    }
  }
}
