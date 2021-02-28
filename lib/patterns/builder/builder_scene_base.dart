import 'package:flutter/cupertino.dart';
import 'package:proyecto_modelos_1/patterns/patterns.dart';

abstract class BuilderSceneBase{
  @protected
  Scene scene = Scene();
  String addImage(String imageRoute){
    scene.imageRoute = imageRoute;
    return imageRoute;
  }
  String addStory(String story){
    scene.story = story;
    return story;
  }

  String addTittle(String tittle);

}