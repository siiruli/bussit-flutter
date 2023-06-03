import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

/// Reserve space equivalent to the size of the reserve widget.
/// The reserve widget is invisible. The child is placed in the space
/// according to alignment
class ReserveSpace extends StatelessWidget {
  const ReserveSpace({this.child, this.reserve, super.key, this.alignment});

  final Widget? child;
  final Widget? reserve;
  final AlignmentGeometry? alignment;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignment ?? AlignmentDirectional.topStart,
      children: [
        reserve == null
            ? null
            : Visibility(
                child: reserve!,
                visible: false,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
              ),
        child,
      ].whereNotNull().toList(),
    );
  }
}
