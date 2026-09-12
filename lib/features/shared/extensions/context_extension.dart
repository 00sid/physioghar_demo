import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  /// Returns true if the current theme is dark mode.
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  /// Returns the screen size of the current context.
  Size get screenSize => MediaQuery.of(this).size;

  /// Removes the focus from any currently focused input widgets.
  void unfocusInputs() {
    FocusScope.of(this).requestFocus(FocusNode());
  }

  /// Requests focus for the given [FocusNode] or the current focus scope if no [FocusNode] is given.
  void requestFocusOnInputs({final FocusNode? focusNode}) {
    if (mounted) FocusScope.of(this).requestFocus(focusNode);
  }
}
