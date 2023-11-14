import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../main.dart';
import '../../constant/constant.dart';
import '../app_localizations.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit()
      : super(
          LanguageLoaded(languageCode: SupportedLanguageLocales.currentLocale),
        );


  void loadAppLanguageFromLocalStorage()async{
    // final String localLanguageValue = await localStorageInstance.readUserSelectedLanguageKey();
    // log("Loaded Language value from local storage is:::::=====>>>$localLanguageValue");
    // emit(
    //   LanguageLoaded(
    //     languageCode: localLanguageValue,
    //   ),
    // );
  }

  void changeAppLanguageLocale({required String languageCode}) async {
    changeLanguage(languageCode).then((_) async {
      emit(
        LanguageLoaded(
          languageCode: languageCode,
        ),
      );

      // await localStorageInstance.writeUserSelectedLanguageKey(
      //     userLanguage: languageCode);
    });
  }
}
