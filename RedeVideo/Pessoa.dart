abstract class Pessoa {
  //Váriaveis
  String? _nome;
  int? _idade;
  String? _sexo;
  double? _experiencia;

  //Construtor
  Pessoa(String nome, int idade, String sexo) {
    this._nome = nome;
    this._idade = idade;
    this._sexo = sexo;
    this._experiencia = 0;
  }

  //Getters e Setters
  String? getNome() {
    return _nome;
  }

  void setNome(String? nome) {
    this._nome = nome;
  }

  int? getIdade() {
    return _idade;
  }

  void setIdade(int? idade) {
    this._idade = idade;
  }

  String? getSexo() {
    return _sexo;
  }

  void setSexo(String? sexo) {
    this._sexo = sexo;
  }

  double? getExperiencia() {
    return _experiencia;
  }

  void setExperiencia(double? experiencia) {
    this._experiencia = experiencia;
  }

  @override
  String toString() {
    return "Pessoa{ nome: $_nome, idade: $_idade, sexo: $_sexo, experiência: $_experiencia }";
  }
}
