import 'Gafanhoto.dart';
import 'Video.dart';
import 'Visualizacao.dart';

void main() {
  List<Video> v = [];
  v.add(Video("Aprendendo Java na prática"));
  v.add(Video("Aprendendo Dart na prática"));
  v[1].play();
  v[1].like();
  //print(v[1].toString());

  List<Gafanhoto> g = [];
  g.add(Gafanhoto("Adriel", 17, "M", "Dri"));
  //print(g[0].toString());

  List<Visualizacao> visu = [];
  visu.add(Visualizacao(g[0], v[1]));
  visu[0].avaliar();
  print(visu[0].toString());
}
