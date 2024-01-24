import 'package:app_template/core/error/response_error.dart';
import 'package:chopper/chopper.dart';
import '../constant/api_routes.dart';
import 'converter/json_serializable_converter.dart';
import 'dummy_model.dart';
import 'interceptor/header_interceptor.dart';
import 'interceptor/internet_connection_interceptor.dart';

class ChopperClientInstance {
  static final ChopperClientInstance _singleton =
      ChopperClientInstance._internal();

  factory ChopperClientInstance() {
    return _singleton;
  }

  ChopperClientInstance._internal();

  static const converter = JsonSerializableConverter({
    Resource: Resource.fromJsonFactory,
    ResponseError: ResponseError.fromJsonFactory
  });

  static ChopperClient? client;

  static void initializeChopperClient() {
    client ??= ChopperClient(
        baseUrl: Uri.parse(ApiRoutes.kBaseUrl),
        services: [
          // Create and pass an instance of the generated service to the client
        ],
        // authenticator: TokenRefreshAuthenticator(),
        converter: const JsonConverter(),
        errorConverter: converter,
        interceptors: [
          InternetConnectionInterceptor(),
          HeaderInterceptor(),
          HttpLoggingInterceptor(),
        ]);
  }
}
