// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

final class _Env {
  static const List<int> _enviedkeybaseUrl = <int>[
    1484781650,
    2952357696,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    1484781680,
    2952357730,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));
}
