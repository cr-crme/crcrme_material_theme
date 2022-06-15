import 'package:flutter/material.dart';

// TODO: This won't work with miminal work as we cannot pass
// ElevatedButton.styleFrom as a const. There the full logic has to be changed...
class CrcrmeElevatedButton extends ElevatedButton {
  CrcrmeElevatedButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
  }) : super(
          key: key,
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          style: style ??= ElevatedButton.styleFrom(primary: Colors.blue),
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          child: child,
        );
}
