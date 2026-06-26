import 'package:flutter/material.dart';

class ATDescriptionTemplate extends StatelessWidget {
  const ATDescriptionTemplate({
    super.key,
    required this.description,
    required this.ios,
    required this.chrome,
    required this.safari,
    this.descriptionStyle,
    this.icon,
    this.iconStyle,
  });

  final String description;
  final String ios;
  final String chrome;
  final String safari;
  final TextStyle? descriptionStyle;
  final IconData? icon;
  final IconThemeData? iconStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              IconTheme(
                data: iconStyle ?? const IconThemeData(size: 10),
                child: Icon(icon),
              ),
              const SizedBox(width: 4),
            ],
            Flexible(
              child: Text(
                description,
                style: descriptionStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Text(
          'iOS: $ios\nChrome: $chrome\nSafari: $safari',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
