import 'package:flutter/material.dart';

class CodeSnippetTemplate extends StatelessWidget {
  const CodeSnippetTemplate({super.key, required this.code});

  final String code;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        code,
        style: const TextStyle(fontSize: 10, fontFamily: 'monospace'),
      ),
    );
  }
}
