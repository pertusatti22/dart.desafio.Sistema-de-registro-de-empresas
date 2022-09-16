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
    print(database[0]);
  }

  void showEmpresaCnpj(String cnpj) {
    for (var empresa in database) {
      if (empresa.juridica.cnpj == cnpj) {
        print('''
                ${empresa.apresentar()}
                Sócio:
                ${empresa.socio.apresentar()}
              ''');
      } else {
        services.escolhaInvalida();
      }
    }
  }

  void showEmpresaSocio(String socio) {
    for (var empresa in database) {
      if (empresa.socio.identificacao() == socio) {
        print('''
                ${empresa.apresentar()}
                Sócio:
                ${empresa.socio.apresentar()}
              ''');
      } else {
        services.escolhaInvalida();
      }
    }
  }
}
