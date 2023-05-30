import 'package:bussit/model/address.dart';
import 'package:bussit/model/user_actions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// A pop up menu that opens from a gesture (currently long press)
class GestureMenu extends StatelessWidget {
  const GestureMenu({this.menu, super.key, this.child});

  final Widget? child;

  /// The items of the pop up menu
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

/// A pop up menu that can be shown from a GestureMenu widget
class Menu {
  /// List of items in a pop up menu
  List<PopupMenuEntry> items;

  /// The function that is called when an item is selected
  void Function(dynamic value) onItemSelected;

  Menu(this.items, this.onItemSelected);

  /// A menu where all items define a function to be called when the item is selected
  Menu.fromFunctionItems(List<PopupMenuEntry<void Function()>> items)
      : this(items, (value) {
          value?.call();
        });
}

/// All menu actions that can be done to a stop
Menu stopMenu(BuildContext context, stop) {
  final address = Address.fromStop(stop);
  final items = [
    PopupMenuItem(
      child: const Text("Set as start location"),
      value: () {
        Provider.of<UserActions>(context, listen: false)
            .setAsStartLocation(address);
      },
    ),
    PopupMenuItem(
      child: const Text("Set as end location"),
      value: () {
        Provider.of<UserActions>(context, listen: false)
            .setAsEndLocation(address);
      },
    ),
  ];
  return Menu.fromFunctionItems(items);
}

/// All menu action that can be done to a trip
Menu tripMenu(BuildContext context, trip) {
  Address address = Address.fromTrip(trip);
  List<PopupMenuEntry<void Function()>> items = [
    PopupMenuItem(
      child: const Text("Set as start location"),
      value: () {
        Provider.of<UserActions>(context, listen: false)
            .setAsStartLocation(address);
      },
    ),
  ];
  return Menu.fromFunctionItems(items);
}
