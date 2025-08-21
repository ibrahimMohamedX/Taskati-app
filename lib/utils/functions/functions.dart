import 'package:taskati_app/core/assets.dart';
import 'package:taskati_app/core/variables.dart';

void ChangeColor() {
  variablesData.textwhiteTogrey == ColorData.grey
      ? variablesData.textwhiteTogrey = ColorData.white
      : variablesData.textwhiteTogrey = ColorData.grey;
  variablesData.textwhiteToblack == ColorData.black
      ? variablesData.textwhiteToblack = ColorData.white
      : variablesData.textwhiteToblack = ColorData.black;
  variablesData.pagecolor == ColorData.white
      ? variablesData.pagecolor = ColorData.black
      : variablesData.pagecolor = ColorData.white;
  variablesData.boxcolor == ColorData.white
      ? variablesData.boxcolor = ColorData.grey
      : variablesData.boxcolor = ColorData.white;
  variablesData.logo == AssetsData.logo_lottie_white
      ? variablesData.logo = AssetsData.logo_lottie_black
      : variablesData.logo = AssetsData.logo_lottie_white;
  variablesData.thembuttoncolor == ColorData.blue
      ? variablesData.thembuttoncolor = ColorData.white
      : variablesData.thembuttoncolor = ColorData.blue;
}
