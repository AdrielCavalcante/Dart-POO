import 'Pessoa.dart';

class Gafanhoto extends Pessoa {
  //Váriaveis
  String? _login;
  int? _totAssistido;

  //Construtor
  Gafanhoto(String nome, int idade, String sexo, String login) : super(nome, idade, sexo) {
    this._login = login;
    this._totAssistido = 0;
  }

  //Getters e Setters
  String? getLogin() {
    return _login;
  }

  void setTitulo(String? login) {
    this._login = login;
  }

  int? getTotAssistido() {
    return _totAssistido;
  }

  void setTotAssistido(int? totAssistido) {
    this._totAssistido = totAssistido;
  }

  @override
  String toString() {
    return "Gafanhoto{ "+super.toString()+"login: $_login, Total Assistido: $_totAssistido }";
  }

}
