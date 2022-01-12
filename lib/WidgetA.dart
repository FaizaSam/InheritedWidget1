import 'package:flutter/material.dart';
import 'package:inherited_eg1/InheritedWrapper.dart';

class WidgetA extends StatefulWidget {
  const WidgetA({Key? key}) : super(key: key);

  @override
  _WidgetAState createState() => _WidgetAState();
}

class _WidgetAState extends State<WidgetA> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text("Increment"));
  }

  onPressed() {
    InheritedWrapperState wrapper = InheritedWrapper.of(context);
    wrapper.incrementCounter();
  }
}

class WidgetB extends StatelessWidget {
  const WidgetB({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final InheritedWrapperState state = InheritedWrapper.of(context);
    print("widget B");
    return new Text('${state.counter}');
  }
}

class WidgetC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final InheritedWrapperState state = InheritedWrapper.of(context);
    print("widget C");
    return new Text('I am Widget C');
  }
}
