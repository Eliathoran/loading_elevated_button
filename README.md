# Loading Elevated Button

Elevated button with a disabled while loading feature

## Getting Started

Simple Elevated button which has the option of being enabled/disabled while loading as well as adding any Widget when button has loading property

Button can be enabled/disabled when loading and can have different Widget children depending on its state.

<p align="center">
  <img src="https://media.giphy.com/media/OyDeKyCjeQAVR6v1kH/source.gif"/>
</p>

You can take a look into the simple example below or take a look into the example project inside the code which has other basic behaviours (previous image taken from that example).

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
