import 'package:flutter/material.dart';
import 'package:loading_elevated_button/loading_elevated_button.dart';

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
      padding: EdgeInsets.all(8.0),
      height: 58,
      width: 200,
      child: LoadingElevatedButton(
        isLoading: true,
        disabledWhileLoading: true,
        onPressed: () {
          print("Button clicked");
        },
        child: Text('Default Loading'),
      ),
    );
  }

  Container buildNotLoadingButton() {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 58,
      width: 200,
      child: LoadingElevatedButton(
        isLoading: false,
        disabledWhileLoading: true,
        onPressed: () {
          print("Button clicked");
        },
        child: Text('Not Loading'),
      ),
    );
  }

  Container buildLoadingWithCustomizedMessageButton() {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 58,
      width: 200,
      child: LoadingElevatedButton(
        isLoading: true,
        disabledWhileLoading: true,
        onPressed: () {
          print("Button clicked");
        },
        child: Text('Not Loading'),
        loadingChild: Text(
          'Customized Loading',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Container buildLoadingButtonNotDisabled() {
    return Container(
      padding: EdgeInsets.all(8.0),
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
        child: Text(
          'Loading but not Disabled',
          textAlign: TextAlign.center,
        ),
        loadingChild: Text(
          'Customized and Enabled Loading',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
