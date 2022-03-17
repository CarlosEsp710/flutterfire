import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String heading;

  const Header({
    Key? key,
    required this.heading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        heading,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}

class Paragraph extends StatelessWidget {
  final String content;

  const Paragraph({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text(
        content,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

class IconAndDetail extends StatelessWidget {
  final IconData icon;
  final String detail;

  const IconAndDetail({
    Key? key,
    required this.icon,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 8),
          Text(
            detail,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}

class StyledButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;

  const StyledButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.deepPurple)),
      onPressed: onPressed,
      child: child,
    );
  }
}
