import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/views/widgets/my_search_icon.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  const MyAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            // fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        MySearchIcon(icon: icon,onPressed: onPressed,),
      ],
    );
  }
}
