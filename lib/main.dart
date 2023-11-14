import 'package:app_template/utils/constant/api_routes.dart';
import 'package:app_template/utils/constant/bloc_observer.dart';
import 'package:app_template/utils/constant/env.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'utils/chopper_client/chopper_client.dart';
import 'utils/constant/constant.dart';
import 'utils/dependency_injection/di_container.dart' as di;
import 'utils/dependency_injection/di_container.dart';
import 'utils/internet_checker/network_bloc.dart';
import 'utils/internet_checker/network_event.dart';
import 'utils/local_storage/local_storage.dart';
import 'utils/localizations/language_cubit/language_cubit.dart';
import 'utils/navigation/go_router_navigation_delegate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  ApiRoutes.kBaseUrl = Env.baseUrl;
  Bloc.observer = CustomBlocObserver();

  di.initializeDependencies();
  ChopperClientInstance.initializeChopperClient();
  runApp(const MyApp());
}

final _router = GoRouterNavigationDelegate();

final localStorageInstance = getItInstance.get<LocalStorage>();
final internetConnection = getItInstance.get<NetworkBloc>();
final appLanguageCubit = getItInstance.get<LanguageCubit>();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    appLanguageCubit.loadAppLanguageFromLocalStorage();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: appLanguageCubit,
        ),
        BlocProvider.value(
          value: internetConnection..add(NetworkObserve()),
        ),
      ],
      child: BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, state) {
          if (state is LanguageLoaded) {
            return MaterialApp.router(
              title: 'My Sample App',
              themeMode: ThemeMode.system,
              locale: Locale(state.languageCode),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              darkTheme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              themeAnimationCurve: Curves.fastEaseInToSlowEaseOut,
              routerConfig: _router.router,
            );
          }
          return MaterialApp.router(
            title: 'My Sample App',
            themeMode: ThemeMode.system,
            locale: const Locale(
              SupportedLanguageLocales.engLangCode,
            ),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            themeAnimationCurve: Curves.fastEaseInToSlowEaseOut,
            routerConfig: _router.router,
          );
        },
      ),
    );
  }
}
