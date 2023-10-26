import 'package:flutter/material.dart';

/// Wrapper for stateful functionality
/// to provide onInit calls in stateless widgets
class StatefulWrapper extends StatefulWidget {
  const StatefulWrapper({
    required this.child,
    super.key,
    this.onInit,
    this.onDispose,
  });

  final VoidCallback? onInit;
  final Widget child;
  final VoidCallback? onDispose;

  @override
  State<StatefulWrapper> createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {
  @override
  void initState() {
    widget.onInit?.call();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    widget.onDispose?.call();
    super.dispose();
  }
}
