import 'Gafanhoto.dart';
import 'Video.dart';

class Visualizacao {
  Gafanhoto? _espectador;
  Video? _filme;

  //Construtor
  Visualizacao(Gafanhoto espectador, Video filme) {
    this._espectador = espectador;
    this._filme = filme;
    this._espectador!.setTotAssistido(this._espectador!.getTotAssistido()! + 1);
    this._filme!.setViews(this._filme!.getViews()! + 1);
  }

  //Funções
  void avaliar() {
    this._filme!.setAvaliacao(5);
  }

  void avaliarN(int nota) {
    this._filme!.setAvaliacao(nota);
  }

  void avaliarP(double porc) {
    int total = 0;
    if (porc <= 20) {
      total = 3;
    } else if (porc <= 50) {
      total = 5;
    } else if (porc <= 90) {
      total = 8;
    } else {
      total = 10;
    }
    this._filme!.setAvaliacao(total);
  }

  //Getters e Setters
  Gafanhoto? getEspectador() {
    return _espectador;
  }

  void setEspectador(Gafanhoto? espectador) {
    this._espectador = espectador;
  }

  Video? getFilme() {
    return _filme;
  }

  void setFilme(Video? filme) {
    this._filme = filme;
  }

  @override
  String toString() {
    return "Visualização{ Espectador: $_espectador, Filme: $_filme }";
  }
}
