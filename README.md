# app_template

Flutter App Template:

# STATE Management

1. Bloc/Cubit Pattern with clean architecture.

Points:

1. It includes localization setup as well as listening to internet connection and show snackbar.
2. It includes network client as a chopper client for managing api calls.
3. It includes go router for the application navigation system.
4. It includes flutter secure storage for the temporary data storage.
5. It includes get_it as a dependency injection.
6. It includes image picker with image compression.
7. It includes some pre defined extensions.
8. It includes bloc observer to track the changes between the bloc/cubit states.
9. It includes envied to maintain our secret keys securely i.e inside .env file of root project define the secret key and value and then goto utils->constant->env.dart and add over there as well and then generate it with the command mentioned in imporant commands (1).

# Important Commands:

1. To Generate models or add a new chopper service or updated the .env file use this command: dart run build_runner build
   --delete-conflicting-outputs
2. To update the newly added localizations use this: flutter gen-l10n
3. Inside widgets -> responsive.dart there's a method getResponsiveValue which is useful to manage
   responsive values i.e font-size, padding,margin, height width etc.