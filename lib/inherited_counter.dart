import 'package:flutter/material.dart';

class InheritedCounter extends InheritedWidget {
  InheritedCounter({Key? key, required this.child, required this.counter})
      : super(key: key, child: child);

  final int counter;
  final Widget child;

  static InheritedCounter? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
  }

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) {
    return oldWidget.counter != counter;
  }
}
