# Loading Elevated Button

Elevated button with a disabled while loading feature

## Getting Started

Simple Elevated button which has the option of being enabled/disabled while loading as well as adding any Widget when button has loading property

![You can see Image inside images folder...](https://github.com/Eliathoran/loading_elevated_button/blob/master/images/button_types.png)

## Simple Example
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Loading Elevated Button',
    theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
    home: Demo(),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            child: LoadingElevatedButton(
              isLoading: true,
              disabledWhileLoading: true,
              onPressed: () {
                print("Button clicked");
              },
              child: Text('Hello'),
            ),
          ),
        ),
      ),
    );
  }
}
```

## Button attributes

```dart
LoadingElevatedButton({
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
})
```

## License
MIT License.
