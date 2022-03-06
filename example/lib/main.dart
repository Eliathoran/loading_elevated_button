import 'package:flutter/material.dart';
import 'package:loading_elevated_button/loading_elevated_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loading Elevated Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Demo(),
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildNotLoadingButton(),
              buildLoadingButton(),
              buildLoadingWithCustomizedMessageButton(),
              buildLoadingButtonNotDisabled(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildLoadingButton() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 58,
      width: 200,
      child: LoadingElevatedButton(
        isLoading: true,
        disabledWhileLoading: true,
        onPressed: () {
          print("Button clicked");
        },
        child: const Text('Default Loading'),
      ),
    );
  }

  Container buildNotLoadingButton() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 58,
      width: 200,
      child: LoadingElevatedButton(
        isLoading: false,
        disabledWhileLoading: true,
        onPressed: () {
          print("Button clicked");
        },
        child: const Text('Not Loading'),
      ),
    );
  }

  Container buildLoadingWithCustomizedMessageButton() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 58,
      width: 200,
      child: LoadingElevatedButton(
        isLoading: true,
        disabledWhileLoading: true,
        onPressed: () {
          print("Button clicked");
        },
        child: const Text('Not Loading'),
        loadingChild: const Text(
          'Customized Loading',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Container buildLoadingButtonNotDisabled() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 58,
      width: 200,
      child: LoadingElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        isLoading: true,
        disabledWhileLoading: false,
        onPressed: () {
          print("Button clicked");
        },
        child: const Text(
          'Loading but not Disabled',
          textAlign: TextAlign.center,
        ),
        loadingChild: const Text(
          'Customized and Enabled Loading',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
