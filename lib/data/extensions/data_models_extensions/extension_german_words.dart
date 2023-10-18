import 'package:get/get.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_word/german_word.dart';
import 'package:language_learning_assistant_app/data/storage/app_local_storage.dart';

extension RxStorage on Rx<GermanWordsList> {
  void get saveOnStorage async => await AppLocalStorage.to.saveWordsList(value);
  Rx<GermanWordsList> get loadFromStorage => AppLocalStorage.to.loadWordsList().obs;
}

extension Storage on GermanWordsList {
  void get saveOnStorage async => await AppLocalStorage.to.saveWordsList(this);
  GermanWordsList get loadFromStorage => AppLocalStorage.to.loadWordsList();
}

extension RxClear on Rx<GermanWordsList> {
  Rx<GermanWordsList> get clearData => GermanWordsList(germanWordsList: List<GermanWord>.empty(growable: true)).obs;
}

extension Clear on GermanWordsList {
  GermanWordsList get clearData => GermanWordsList(germanWordsList: List<GermanWord>.empty(growable: true));
}

///SavedList
extension RxStorageSaved on Rx<GermanWordsList> {
  void get saveSavedOnStorage async => await AppLocalStorage.to.saveSavedList(value);
  Rx<GermanWordsList> get loadSavedFromStorage => AppLocalStorage.to.loadSavedList().obs;
}

extension StorageSaved on GermanWordsList {
  void get saveSavedOnStorage async => await AppLocalStorage.to.saveSavedList(this);
  GermanWordsList get loadSavedFromStorage => AppLocalStorage.to.loadSavedList();
}