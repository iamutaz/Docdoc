import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<void> pushNamed(String routename, {Object? aurgment}) =>
      Navigator.of(this).pushNamed(routename, arguments: aurgment);

  Future<void> pushReplacementName(String routename, {Object? aurgment}) =>
      Navigator.of(this).pushReplacementNamed(routename, arguments: aurgment);

  Future<void> pushNamedAndRemoveUntil(
    String routename, {
    Object? aurgment,
    required RoutePredicate predicate,
  }) => Navigator.of(
    this,
  ).pushNamedAndRemoveUntil(routename, predicate, arguments: aurgment);

  void pop() => Navigator.of(this).pop();
}
