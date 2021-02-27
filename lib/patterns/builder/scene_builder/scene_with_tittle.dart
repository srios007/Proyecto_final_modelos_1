import '../../patterns.dart';

abstract class SceneWithTittle implements BuilderSceneBase{
  @override
  String addTittle(String tittle) {
    // TODO: implement addDecision
    scene.tittle = tittle;
    return tittle;
  }
}