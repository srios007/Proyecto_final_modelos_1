import '../patterns.dart';

abstract class ChangeSkin extends Skin{
  Skin skin;
  ChangeSkin(this.skin);
}