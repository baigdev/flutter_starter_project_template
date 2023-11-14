import 'dart:async';
import 'package:chopper/chopper.dart';

class HeaderInterceptor implements RequestInterceptor {
  static const String authHeader = "Authorization";

  // final localStorage = getItInstance.get<LocalStorage>();

  @override
  FutureOr<Request> onRequest(Request request) async {
    // final token = await localStorage.readBearerToken();
    return applyHeader(
      request,
      authHeader,
      "Bearer token",
    );
  }
}
