import 'package:flutter/material.dart';

class GestureMenu extends StatelessWidget {
  const GestureMenu({this.menu, super.key, this.child});

  final Widget? child;
  final Menu? menu;

  void _showContextMenu(BuildContext context, details) async {
    if (menu == null || menu!.items.isEmpty) {
      return;
    }
    final Offset position = details.globalPosition;
    final RenderObject? overlay =
        Overlay.of(context).context.findRenderObject();

    final result = await showMenu(
      context: context,

      // Show the context menu at the tap location
      position: RelativeRect.fromRect(
        Rect.fromLTWH(position.dx, position.dy, 0, 0),
        overlay!.paintBounds,
      ),
      // set a list of choices for the context menu
      items: menu!.items,
    );
    // Implement the logic for each choice here
    menu!.onItemSelected(result);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (LongPressStartDetails details) {
        _showContextMenu(context, details);
      },
      child: child,
    );
  }
}

class Menu {
  List<PopupMenuEntry> items;
  void Function(dynamic value) onItemSelected;

  Menu(this.items, this.onItemSelected);
  Menu.fromFunctionItems(List<PopupMenuEntry<void Function()>> items)
      : this(items, (value) {
          value?.call();
        });
}

Menu tripMenu(trip) {
  List<PopupMenuEntry<void Function()>> items = [
    // PopupMenuItem(
    //   child: const Text("Route from here"),
    //   value: () {},
    // ),
  ];
  return Menu.fromFunctionItems(items);
}
