import 'package:get/get.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_verb/german_verb.dart';
import 'package:language_learning_assistant_app/data/storage/app_local_storage.dart';

extension RxStorage on Rx<GermanVerbsList> {
  void get saveOnStorage async => await AppLocalStorage.to.saveVerbs(value);
  Rx<GermanVerbsList> get loadFromStorage => AppLocalStorage.to.loadVerbsList().obs;
}

extension Storage on GermanVerbsList {
  void get saveOnStorage async => await AppLocalStorage.to.saveVerbs(this);
  GermanVerbsList get loadFromStorage => AppLocalStorage.to.loadVerbsList();
}

extension RxClear on Rx<GermanVerbsList> {
  Rx<GermanVerbsList> get clearData => GermanVerbsList(germanVerbsList: List<GermanVerb>.empty(growable: true)).obs;
}

extension Clear on GermanVerbsList {
  GermanVerbsList get clearData => GermanVerbsList(germanVerbsList: List<GermanVerb>.empty(growable: true));
}