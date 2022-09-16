import '../entities/empresa.dart';
import '../entities/endereco.dart';
import '../entities/fisica.dart';
import '../entities/juridica.dart';

class Mock {
  Endereco endereco1 = Endereco(
      logradouro: 'Rua Três',
      numero: '338',
      complemento: 'Vila Industrial',
      bairro: 'Piracicaba',
      estado: 'SP',
      cep: '13.412-233');
  Endereco endereco2 = Endereco(
      logradouro: 'Rua Ulisses Bueno',
      numero: '175',
      complemento: 'Vila Rosa',
      bairro: 'Aparecida de Goiânia',
      estado: 'GO',
      cep: '74.935-870');
  late Juridica juridica1 = Juridica(
      razaoSocial: 'Elisa e Flávia Pães e Doces ME',
      nomeFantasia: 'Pães e Doces',
      cnpj: '11.941.838/0001-04',
      endereco: endereco1);
  late Fisica fisica1 = Fisica(
      nome: 'Mirella Kamilly Letícia Barbosa',
      cpf: '763.679.800-08',
      endereco: endereco2);
  late Empresa empresa1 = Empresa(
      juridica: juridica1, telefone: '(19) 9 8838-0630', socio: fisica1);

  Endereco endereco3 = Endereco(
      logradouro: 'Rua Domingos Vendemiati',
      numero: '154',
      complemento: 'Parque Recanto do Parrilho',
      bairro: 'Jundiaí',
      estado: 'SP',
      cep: '13.219-051');
  Endereco endereco4 = Endereco(
      logradouro: 'Rua Ângelo Alberto Nesti',
      numero: '639',
      complemento: 'Bussocaba',
      bairro: 'Osasco',
      estado: 'SP',
      cep: '06.053-060');
  late Juridica juridica2 = Juridica(
      razaoSocial: 'Arthur e Andreia Telas Ltda',
      nomeFantasia: 'Telas',
      cnpj: '92.456.516/0001-63',
      endereco: endereco3);
  late Juridica juridica3 = Juridica(
      razaoSocial: 'Lavínia e Tereza Locações de Automóveis Ltda',
      nomeFantasia: 'Loc. Auto',
      cnpj: '87.009.263/0001-40',
      endereco: endereco4);
  late Empresa empresa2 = Empresa(
      juridica: juridica2, telefone: '(11) 9 9572-6906', socio: juridica3);
}
