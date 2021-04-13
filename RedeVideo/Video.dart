import 'AcoesVideo.dart';

class Video implements AcoesVideo {
  //Váriaveis
  String? _titulo;
  int? _avaliacao;
  int? _views;
  int? _curtidas;
  bool? _reproduzindo;

  //Construtor
  Video(String titulo) {
    this._titulo = titulo;
    this._avaliacao = 1;
    this._views = 0;
    this._curtidas = 0;
    this._reproduzindo = false;
  }

  //Getters e Setters
  String? getTitulo() {
    return _titulo;
  }

  void setTitulo(String? titulo) {
    this._titulo = titulo;
  }

  int? getAvaliacao() {
    return _avaliacao;
  }

  void setAvaliacao(int? avaliacao) {
    double nova = (this._avaliacao! + avaliacao!) / this._views!;
    
    this._avaliacao = nova.truncate();
  }

  int? getViews() {
    return _views;
  }

  void setViews(int? views) {
    this._views = views;
  }

  int? getCurtidas() {
    return _curtidas;
  }

  void setCurtidas(int? curtidas) {
    this._curtidas = curtidas;
  }

  bool? getReproduzindo() {
    return _reproduzindo;
  }

  void setReproduzindo(bool? reproduzindo) {
    this._reproduzindo = reproduzindo;
  }

  //Métodos abstratos
  @override
  void play() {
    this._reproduzindo = true;
  }

  @override
  void pause() {
    this._reproduzindo = false;
  }

  @override
  void like() {
    this._curtidas = this._curtidas! + 1;
  }

  @override
  String toString() {
    return "Video{ titulo: $_titulo, avaliação: $_avaliacao, views: $_views, curtidas: $_curtidas, reproduzindo: $_reproduzindo }";
  }
}
