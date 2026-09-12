import 'package:flutter/material.dart';

/// Navigation helpers for [BuildContext].
extension NavigationExtension on BuildContext {
  /// Push a new page.
  Future<T?> pushPage<T>(Widget page) {
    return Navigator.of(this).push<T>(MaterialPageRoute(builder: (_) => page));
  }

  /// Pop the current page.
  void popPage<T extends Object?>([T? result]) {
    Navigator.of(this).pop(result);
  }
}
