library loading_elevated_button;

import 'package:flutter/material.dart';

/// {@category Button}
///
/// LoadingElevatedButton is an ElevatedButton with a loading option for changing when its set to [isLoading].
///
/// By default (without any different parameters as an ElevatedButton) this button works exactly in the same way as an ElevatedButton.
/// Using LoadingElevatedButton without [isLoading] will make the button have same behaviour as ElevatedButton
/// [disabledWhileLoading] disables the button when the state of [isLoading] is true.
///
/// By Default, while loading LoadingElevatedButton has a CircularProgressIndicator
/// This can be changed by adding [loadingChild] Widget into the LoadingElevatedButton constructor.
///
class LoadingElevatedButton extends ElevatedButton {
  /// Creates an LoadingElevatedButton.
  const LoadingElevatedButton({
    Key key,
    @required VoidCallback onPressed,
    VoidCallback onLongPress,
    ButtonStyle style,
    FocusNode focusNode,
    bool autoFocus = false,
    Clip clipBehavior = Clip.none,
    @required Widget child,
    Widget loadingChild,
    bool isLoading = false,
    bool disabledWhileLoading = true,
  }) : super(
          key: key,
          onPressed: disabledWhileLoading
              ? isLoading
                  ? null
                  : onPressed
              : onPressed,
          onLongPress: onLongPress,
          style: style,
          focusNode: focusNode,
          autofocus: autoFocus,
          clipBehavior: clipBehavior,
          child: isLoading
              ? loadingChild == null
                  ? const CircularProgressIndicator()
                  : loadingChild
              : child,
        );
}
