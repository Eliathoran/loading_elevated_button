import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:loading_elevated_button/loading_elevated_button.dart';

void main() {
  late Widget progressBar;

  setUp(() {
    progressBar = const CircularProgressIndicator();
  });

  testWidgets(
      'LoadingElevatedButton when !isLoading with a given widget then no given widget is found',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyWidget());

    final loadingWidget = find.byWidget(progressBar);
    expect(loadingWidget, findsNothing);
  });

  testWidgets(
      'LoadingElevatedButton when isLoading with a given widget then it is provided',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyWidget(
      progressBar: progressBar,
      isLoading: true,
    ));

    final loadingWidget = find.byWidget(progressBar);
    expect(loadingWidget, findsOneWidget);
  });

  // TODO: learn how to test if a VoidCallback does exist inside a Widget
  // testWidgets(
  //     'LoadingElevatedButton when isLoading and disabledWhileLoading with a given widget then onPressed is disabled',
  //     (WidgetTester tester) async {
  //   await tester.pumpWidget(MyWidget(
  //     progressBar: progressBar,
  //     isLoading: true,
  //     disabledWhileLoading: true,
  //     onPressed: onPressed,
  //   ));
  //
  //   final loadingWidget = find.byElementType(VoidCallback);
  //   expect(loadingWidget, findsNothing);
  // });
  //
  // testWidgets(
  //     'LoadingElevatedButton when isLoading and !disabledWhileLoading with a given widget then onPressed is enabled',
  //     (WidgetTester tester) async {
  //   await tester.pumpWidget(MyWidget(
  //     progressBar: progressBar,
  //     isLoading: true,
  //     disabledWhileLoading: false,
  //     onPressed: onPressed,
  //   ));
  //
  //   final loadingWidget = find.byElementType(VoidCallback);
  //   expect(loadingWidget, findsOneWidget);
  // });
}

class MyWidget extends StatelessWidget {
  final bool isLoading;
  final bool disabledWhileLoading;
  final Widget? progressBar;
  final VoidCallback? onPressed;

  const MyWidget(
      {Key? key,
      this.onPressed,
      this.progressBar,
      this.isLoading = false,
      this.disabledWhileLoading = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: LoadingElevatedButton(
                isLoading: isLoading,
                disabledWhileLoading: disabledWhileLoading,
                onPressed: onPressed,
                child: const Text('Hello'),
                loadingChild: progressBar,
              )),
        ),
      ),
    );
  }
}
