// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:activity_tracker/router/router.dart';

class NavigationView extends StatelessWidget {
  const NavigationView({
    Key? key,
    required this.selectedIndex,
    required this.child,
  }) : super(key: key);
  final int selectedIndex;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: selectedIndex == 0,
      onPopInvoked: (didPop) {
        if (selectedIndex != 0) {
          context.go(Routes.healthscreen.path);
        }
      },
      child: Stack(
        children: [
          child,
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: SizedBox(
                  height: 50,
                  child: CustomNavBar(
                    colors: Colors.grey,
                    selectedColor: Colors.white,
                    icons: [
                      selectedIndex == 0 ? Iconsax.home5 : Iconsax.home_1,
                      selectedIndex == 1 ? Iconsax.health5 : Iconsax.health,
                      selectedIndex == 2 ? Iconsax.heart5 : Iconsax.heart,
                      selectedIndex == 3
                          ? Iconsax.profile_circle5
                          : Iconsax.profile_circle,
                    ],
                    currentIndex: selectedIndex,
                    onItemTap: (index) => context.go(_indexToTab(index)),
                  ),
                )),
          )
        ],
      ),
    );
  }

  String _indexToTab(int index) {
    switch (index) {
      case 0:
        return Routes.homescreen.path;
      case 1:
        return Routes.todayscreen.path;
      case 2:
        return Routes.healthscreen.path;
      case 3:
        return Routes.profilescreen.path;
      default:
        return Routes.homescreen.path;
    }
  }
}

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    Key? key,
    required this.icons,
    required this.currentIndex,
    required this.onItemTap,
    required this.selectedColor,
    required this.colors,
  }) : super(key: key);
  final List<IconData> icons;
  final int currentIndex;
  final void Function(int index) onItemTap;
  final Color selectedColor;
  final Color colors;

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      double lineSize = constraints.maxWidth / widget.icons.length;

      return Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: AnimatedContainer(
              curve: Curves.easeOut,
              duration: const Duration(milliseconds: 350),
              margin:
                  EdgeInsets.only(left: widget.currentIndex * lineSize + 47),
              height: 6,
              width: 12,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: widget.icons.map(
                (e) {
                  int index = widget.icons.indexOf(e);
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: (lineSize - 48) / 2),
                    child: SizedBox(
                      width: 48,
                      child: MaterialButton(
                        elevation: 0,
                        minWidth: 10,
                        height: 45,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        // splashColor: const Color(0xFFBE8E9B),
                        highlightColor: Colors.grey,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        onPressed: widget.currentIndex == index
                            ? null
                            : () {
                                widget.onItemTap(index);
                              },
                        child: Icon(
                          e,
                          color: widget.currentIndex == index
                              ? widget.selectedColor
                              : widget.colors,
                          size: 25,
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ],
      );
    });
  }
}
