import 'package:app_template/utils/constant/api_routes.dart';
import 'package:app_template/utils/constant/bloc_observer.dart';
import 'package:app_template/utils/constant/env.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
              themeMode: ThemeMode.light,
              locale: Locale(state.languageCode),
              builder: (context, child) => ResponsiveBreakpoints.builder(
                child: child!,
                breakpoints: [
                  const Breakpoint(start: 0, end: 360, name: 'SMALL_MOBILE'),
                  const Breakpoint(start: 361, end: 746, name: MOBILE),
                  const Breakpoint(start: 747, end: 1000, name: TABLET),
                  const Breakpoint(start: 1001, end: 1920, name: DESKTOP),
                  const Breakpoint(
                      start: 1921, end: double.infinity, name: '4K'),
                ],
              ),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: FlexThemeData.light(
                scheme: FlexScheme.materialBaseline,
                surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
                blendLevel: 7,
                subThemesData: const FlexSubThemesData(
                  blendOnLevel: 10,
                  blendOnColors: false,
                  useTextTheme: true,
                  useM2StyleDividerInM3: true,
                  alignedDropdown: true,
                  useInputDecoratorThemeInDialogs: true,
                ),
                visualDensity: FlexColorScheme.comfortablePlatformDensity,
                useMaterial3: true,
                swapLegacyOnMaterial3: true,
                textTheme: GoogleFonts.poppinsTextTheme(),
              ),
              darkTheme: FlexThemeData.dark(
                scheme: FlexScheme.materialBaseline,
                surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
                blendLevel: 13,
                subThemesData: const FlexSubThemesData(
                  blendOnLevel: 20,
                  useTextTheme: true,
                  useM2StyleDividerInM3: true,
                  alignedDropdown: true,
                  useInputDecoratorThemeInDialogs: true,
                ),
                visualDensity: FlexColorScheme.comfortablePlatformDensity,
                useMaterial3: true,
                swapLegacyOnMaterial3: true,
                textTheme: GoogleFonts.poppinsTextTheme(),
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
            builder: (context, child) => ResponsiveBreakpoints.builder(
              child: child!,
               breakpoints: [
                  const Breakpoint(start: 0, end: 360, name: 'SMALL_MOBILE'),
                  const Breakpoint(start: 361, end: 746, name: MOBILE),
                  const Breakpoint(start: 747, end: 1000, name: TABLET),
                  const Breakpoint(start: 1001, end: 1920, name: DESKTOP),
                  const Breakpoint(
                      start: 1921, end: double.infinity, name: '4K'),
                ],
            ),
            debugShowCheckedModeBanner: false,
            theme: FlexThemeData.light(
              scheme: FlexScheme.materialBaseline,
              surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
              blendLevel: 7,
              subThemesData: const FlexSubThemesData(
                blendOnLevel: 10,
                blendOnColors: false,
                useTextTheme: true,
                useM2StyleDividerInM3: true,
                alignedDropdown: true,
                useInputDecoratorThemeInDialogs: true,
              ),
              visualDensity: FlexColorScheme.comfortablePlatformDensity,
              useMaterial3: true,
              swapLegacyOnMaterial3: true,
              textTheme: GoogleFonts.poppinsTextTheme(),
            ),
            darkTheme: FlexThemeData.dark(
              scheme: FlexScheme.materialBaseline,
              surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
              blendLevel: 13,
              subThemesData: const FlexSubThemesData(
                blendOnLevel: 20,
                useTextTheme: true,
                useM2StyleDividerInM3: true,
                alignedDropdown: true,
                useInputDecoratorThemeInDialogs: true,
              ),
              visualDensity: FlexColorScheme.comfortablePlatformDensity,
              useMaterial3: true,
              swapLegacyOnMaterial3: true,
              textTheme: GoogleFonts.poppinsTextTheme(),
            ),
            themeAnimationCurve: Curves.fastEaseInToSlowEaseOut,
            routerConfig: _router.router,
          );
        },
      ),
    );
  }
}
