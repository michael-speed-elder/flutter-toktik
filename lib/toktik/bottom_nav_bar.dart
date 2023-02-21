import 'package:flutter/material.dart';
import 'package:tiktok_digitalturbine/font.dart';
import 'package:tiktok_digitalturbine/toktik/create_button.dart';
import 'package:tiktok_digitalturbine/toktik/logo.dart';

const _transparent = Colors.transparent;

class TokTikBottomNavBar extends StatelessWidget {
  final _opacity = 0.7;

  const TokTikBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const NavBarItem(
              icon: Icon(TikTokIcons.home, size: 20), label: "Home"),
          Opacity(
            opacity: _opacity,
            child: const NavBarItem(
              icon: Icon(Icons.supervisor_account_outlined, size: 28),
              label: "Friends",
              dividerHeight: 0,
            ),
          ),
          const NavBarItem(icon: TokTikCreateButton(), label: ""),
          Opacity(
            opacity: _opacity,
            child: const NavBarItem(
                icon: Icon(TikTokIcons.messages, size: 20), label: "Inbox"),
          ),
          Opacity(
            opacity: _opacity,
            child: const NavBarItem(
                icon: Icon(TikTokIcons.profile, size: 20), label: "Profile"),
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final Widget icon;
  final String? label;
  final double dividerHeight;
  final double _navItemWidth = 46;

  const NavBarItem(
      {required this.icon, this.dividerHeight = 4, this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: label != "" ? _navItemWidth : _navItemWidth * 1.5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          SizedBox(height: dividerHeight),
          Text(
            label!,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          )
        ],
      ),
    );
  }
}

class _xTokTikBottomNavBar extends StatelessWidget {
  const _xTokTikBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // type: BottomNavigationBarType.fixed,
      fixedColor: Colors.white,
      currentIndex: 2,
      showUnselectedLabels: true,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      unselectedItemColor: Colors.white,
      backgroundColor: _transparent,
      items: const [
        BottomNavigationBarItem(
          backgroundColor: _transparent,
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          backgroundColor: _transparent,
          icon: Icon(Icons.supervisor_account_outlined),
          label: "Friends",
        ),
        BottomNavigationBarItem(
          backgroundColor: _transparent,
          icon: TokTikLogo(),
          label: "",
        ),
        BottomNavigationBarItem(
          backgroundColor: _transparent,
          // icon: Icon(Icons.indeterminate_check_box_outlined),
          icon: Icon(TikTokIcons.messages),
          label: "Inbox",
        ),
        BottomNavigationBarItem(
          backgroundColor: _transparent,
          icon: Icon(TikTokIcons.profile),
          label: "Profile",
        ),
      ],
    );
  }
}
