import 'package:flutter/material.dart';

class MySearchIcon extends StatelessWidget {
  final IconData icon;
  const MySearchIcon({super.key, required this.icon, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            color: Colors.white,
            size: 24,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
