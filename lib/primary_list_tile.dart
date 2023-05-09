import 'package:flutter/material.dart';

class PrimaryListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onSelect;

  const PrimaryListTile(
      {Key? key,
        required this.text,
        required this.icon,
        required this.onSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      leading: Icon(icon),
      onTap: onSelect,
    );
  }
}
