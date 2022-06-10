import 'package:flutter/cupertino.dart';

class FavouritesProvider extends ChangeNotifier {
  final myFavourites = [];

  void addOrRemoveRecipe(String value) {
    isSelected(value) ? myFavourites.remove(value) : myFavourites.add(value);
    notifyListeners();
  }

  bool isSelected(String value) => myFavourites.contains(value);
}
