import '../models/favorite_item_model.dart';

class FavoriteModelController {
  void addRemoveFavorite(int itemId) {
    int checkIndex =
        favoriteList.indexWhere((element) => element.itemId == itemId);
   
    if (checkIndex == -1 ) {
      favoriteList.add(Favorite(itemId: itemId));
    
    } else {
      favoriteList.removeWhere((element) => element.itemId == itemId);
    }
  }

  bool checkTheExistenceOfItemInFavorite(int itemId) {
    int checkIndex =
        favoriteList.indexWhere((element) => element.itemId == itemId);

    if (checkIndex != -1) {
      return true;
    } else {
      return false;
    }
  }
}
