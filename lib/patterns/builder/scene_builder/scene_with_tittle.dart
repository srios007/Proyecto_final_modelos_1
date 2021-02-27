import '../../patterns.dart';

class SceneWithTittle extends BuilderSceneBase{
  @override
  String addTittle(String tittle) {
    // TODO: implement addDecision
    scene.tittle = tittle;
    return tittle;
  }

  bool addDecision(bool decision) {
    // TODO: implement addDecision
    scene.decision = decision;
    return decision;
  }

  //String addImage(String imageRoute);

  //String addStory(String story);
}