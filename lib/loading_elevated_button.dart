library loading_elevated_button;

import 'package:flutter/material.dart';


class LoadingElevatedButton extends ElevatedButton {

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
    disabledWhileLoading = true,
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