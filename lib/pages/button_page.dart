import 'package:flutter/material.dart';
import '../widgets/sandbox_page.dart';
import '../widgets/code_snippet_template.dart';
import '../widgets/at_description_template.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({
    super.key,
    required this.showSemanticsDebugger,
    required this.onToggleSemantics,
    required this.onChangeTheme,
  });

  final bool showSemanticsDebugger;
  final void Function(bool) onToggleSemantics;
  final VoidCallback onChangeTheme;

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return SandboxPage(
      title: 'Buttons',
      showSemanticsDebugger: widget.showSemanticsDebugger,
      onToggleSemantics: widget.onToggleSemantics,
      child: Column(
        spacing: 24,
        children: [
          // ---------------------------------------------------------------------------
          // Icon Buttons
          // ---------------------------------------------------------------------------
          Semantics(
            header: true,
            child: Text(
              'Icon Buttons',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IconButton: Tooltip only
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.color_lens),
                      tooltip: 'Change Background Color',
                      onPressed: widget.onChangeTheme,
                    ),
                    const ATDescriptionTemplate(
                      icon: Icons.check_circle_outline_outlined,
                      iconStyle: IconThemeData(color: Colors.green),
                      description: 'Tooltip only',
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''IconButton(
  icon: Icon(Icons.color_lens),
  tooltip: 'Change Background Color',
)''',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 24),

              // IconButton: Semantics only
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Semantics(
                      label: 'Change Background Color',
                      child: IconButton(
                        icon: const Icon(Icons.color_lens_sharp),
                        onPressed: widget.onChangeTheme,
                      ),
                    ),
                    const ATDescriptionTemplate(
                      icon: Icons.warning_amber_rounded,
                      iconStyle: IconThemeData(color: Colors.red, size: 16),
                      description: 'Semantics',
                      descriptionStyle: TextStyle(color: Colors.red),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''Semantics(
  label: 'Change Background Color',
  child: IconButton(
    icon: Icon(Icons.color_lens_sharp),
  ),
)''',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 24),

              // IconButton: Semantics + role
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Semantics(
                      label: 'Change Background Color',
                      button: true,
                      child: IconButton(
                        icon: const Icon(Icons.color_lens_sharp),
                        onPressed: widget.onChangeTheme,
                      ),
                    ),
                    const ATDescriptionTemplate(
                      icon: Icons.warning_amber,
                      iconStyle: IconThemeData(color: Colors.red, size: 16),
                      description: 'Semantics + Role',
                      descriptionStyle: TextStyle(color: Colors.red),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''Semantics(
  label: 'Change Background Color',
  button: true,
  child: IconButton(
    icon: Icon(Icons.color_lens_sharp),
  ),
)''',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 24),

              // IconButton: Semantics + tooltip
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Semantics(
                      label: 'Change the color of the pages background',
                      child: IconButton(
                        icon: const Icon(Icons.color_lens),
                        tooltip: 'Change Background Color',
                        onPressed: widget.onChangeTheme,
                      ),
                    ),
                    const ATDescriptionTemplate(
                      icon: Icons.warning_amber,
                      iconStyle: IconThemeData(color: Colors.red, size: 16),
                      description: 'Semantics + Tooltip',
                      descriptionStyle: TextStyle(color: Colors.red),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''Semantics(
  label: 'Change the color of the pages background',
  child: IconButton(
    icon: Icon(Icons.color_lens),
    tooltip: 'Change Background Color',
  ),
)''',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 24),

              // IconButton: Semantics + role + tooltip
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Semantics(
                      label: 'Change the color of the pages background',
                      button: true,
                      child: IconButton(
                        icon: const Icon(Icons.color_lens),
                        tooltip: 'Change Background Color',
                        onPressed: widget.onChangeTheme,
                      ),
                    ),
                    const ATDescriptionTemplate(
                      icon: Icons.info_outline_rounded,
                      iconStyle: IconThemeData(color: Colors.orange),
                      description: 'Semantics + Role + Tooltip',
                      descriptionStyle: TextStyle(color: Colors.orange),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''Semantics(
  label: 'Change the color of the pages background',
  button: true,
  child: IconButton(
    icon: Icon(Icons.color_lens),
    tooltip: 'Change Background Color',
  ),
)''',
                    ),
                  ],
                ),
              ),
            ],
          ),

          // ---------------------------------------------------------------------------
          // Text Buttons
          // ---------------------------------------------------------------------------
          Semantics(
            header: true,
            child: Text(
              'Text Buttons',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ElevatedButton: Native button text only
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    ElevatedButton(
                      onPressed: widget.onChangeTheme,
                      child: const Text('Change Background'),
                    ),

                    const ATDescriptionTemplate(
                      description: 'No semantics',
                      icon: Icons.check_circle_outline_outlined,
                      iconStyle: IconThemeData(color: Colors.green),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''ElevatedButton(
  child: Text('Change Background'),
)''',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 24),

              // ElevatedButton: Semantics
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Semantics(
                      label: 'Change the color of the pages background',
                      child: ElevatedButton(
                        onPressed: widget.onChangeTheme,
                        child: const Text('Change Background'),
                      ),
                    ),

                    const ATDescriptionTemplate(
                      icon: Icons.warning_amber,
                      iconStyle: IconThemeData(color: Colors.red, size: 16),
                      description: 'With Semantics',
                      descriptionStyle: TextStyle(color: Colors.red),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''Semantics(
  label: 'Change the color of the pages background',
  child: ElevatedButton(
    child: Text('Change Background'),
  ),
)''',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 24),

              // ElevatedButton: Semantics + role
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Semantics(
                      label: 'Change the color of the pages background',
                      button: true,
                      child: ElevatedButton(
                        onPressed: widget.onChangeTheme,
                        child: const Text('Change Background'),
                      ),
                    ),

                    const ATDescriptionTemplate(
                      icon: Icons.warning_amber,
                      iconStyle: IconThemeData(color: Colors.red, size: 16),
                      description: 'With Semantics + Role',
                      descriptionStyle: TextStyle(color: Colors.red),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''Semantics(
  label: 'Change the color of the pages background',
  button: true,
  child: ElevatedButton(
    child: Text('Change Background'),
  ),
)''',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 24),

              // ElevatedButton: Semantics + role
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Semantics(
                      label: 'Change the color of the pages background',
                      button: true,
                      child: ElevatedButton(
                        onPressed: widget.onChangeTheme,
                        child: const Text('Change Background'),
                      ),
                    ),
                    const ATDescriptionTemplate(
                      icon: Icons.warning_amber,
                      iconStyle: IconThemeData(color: Colors.red, size: 16),
                      descriptionStyle: TextStyle(color: Colors.red),
                      description: 'With Semantics + Role',
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''Semantics(
  label: 'Change the color of the pages background',
  button: true,
  child: ElevatedButton(
    child: Text('Change Background'),
  ),
)''',
                    ),
                  ],
                ),
              ),
            ],
          ),

          // ---------------------------------------------------------------------------
          // Floating Action Buttons
          // ---------------------------------------------------------------------------
          Semantics(
            header: true,
            child: Text(
              'Floating Action Buttons',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // FAB: Tooltip only
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    const Text('No Semantics'),
                    FloatingActionButton(
                      heroTag: 'No Semantics',
                      tooltip: 'Change Background Color',
                      onPressed: widget.onChangeTheme,
                      child: const Icon(Icons.color_lens_rounded),
                    ),
                    const ATDescriptionTemplate(
                      icon: Icons.check_circle_outline_outlined,
                      iconStyle: IconThemeData(color: Colors.green),
                      description: 'Tooltip',
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''FloatingActionButton(
  heroTag: 'No Semantics',
  tooltip: 'Change Background Color',
  child: Icon(Icons.color_lens_rounded),
)''',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 24),

              // FAB: Semantics + role
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Semantics(
                      label: 'Change the color of the pages background',
                      button: true,
                      child: FloatingActionButton(
                        heroTag: 'Semantics',
                        onPressed: widget.onChangeTheme,
                        child: const Icon(Icons.color_lens_rounded),
                      ),
                    ),
                    const ATDescriptionTemplate(
                      icon: Icons.warning_amber,
                      iconStyle: IconThemeData(color: Colors.red, size: 16),
                      description: 'Semantics + Role',
                      descriptionStyle: TextStyle(color: Colors.red),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''Semantics(
  label: 'Change the color of the pages background',
  button: true,
  child: FloatingActionButton(
    heroTag: 'Semantics',
    child: Icon(Icons.color_lens_rounded),
  ),
)''',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 24),

              // FAB: Semantics + tooltip
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Semantics(
                      label: 'Change the color of the pages background',
                      child: FloatingActionButton(
                        heroTag: 'With Semantics and Tooltip',
                        tooltip: 'Change Background Color',
                        onPressed: widget.onChangeTheme,
                        child: const Icon(Icons.color_lens_rounded),
                      ),
                    ),

                    const ATDescriptionTemplate(
                      icon: Icons.warning_amber,
                      iconStyle: IconThemeData(color: Colors.red, size: 16),
                      description: 'Semantics + Tooltip',
                      descriptionStyle: TextStyle(color: Colors.red),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''Semantics(
  label: 'Change the color of the pages background',
  child: FloatingActionButton(
    heroTag: 'With Semantics and Tooltip',
    tooltip: 'Change Background Color',
    child: Icon(Icons.color_lens_rounded),
  ),
)''',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 24),

              // FAB: Semantics + role + tooltip
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Semantics(
                      label: 'Change the color of the pages background',
                      button: true,
                      child: FloatingActionButton(
                        heroTag: 'With Both',
                        tooltip: 'Change Background Color',
                        onPressed: widget.onChangeTheme,
                        child: const Icon(Icons.color_lens_rounded),
                      ),
                    ),
                    const ATDescriptionTemplate(
                      icon: Icons.warning_amber,
                      iconStyle: IconThemeData(color: Colors.red, size: 16),
                      description: 'Semantics + Role + Tooltip',
                      descriptionStyle: TextStyle(color: Colors.red),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''Semantics(
  label: 'Change the color of the pages background',
  button: true,
  child: FloatingActionButton(
    heroTag: 'With Both',
    tooltip: 'Change Background Color',
    child: Icon(Icons.color_lens_rounded),
  ),
)''',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/* // Proof-of-concept: MergeSemantics + Semantics
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    MergeSemantics(
                      child: Semantics(
                        label: 'Learn more about Disney World',
                        child: ElevatedButton(
                          onPressed: widget.onChangeTheme,
                          child: const Text('Learn More'),
                        ),
                      ),
                    ),
                    const ATDescriptionTemplate(
                      description: 'MergeSemantics + Semantics',
                      icon: Icons.info_outline_rounded,
                      iconStyle: IconThemeData(color: Colors.orange),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''MergeSemantics(
  child: Semantics(
    label: 'Learn more about Disney World',
    child: ElevatedButton(
      onPressed: widget.onChangeTheme,
      child: Text('Learn More'),
    ),
  ),
)''',
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 24),
              

              // Proof-of-concept: Semantics + ExcludeSemantics
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Semantics(
                      label: 'Learn more about Disney World',
                      button: true,
                      child: ExcludeSemantics(
                        child: ElevatedButton(
                          onPressed: widget.onChangeTheme,
                          child: const Text('Learn More'),
                        ),
                      ),
                    ),
                    const ATDescriptionTemplate(
                      description: 'Semantics + ExcludeSemantics',
                      icon: Icons.info_outline_rounded,
                      iconStyle: IconThemeData(color: Colors.orange),
                      ios: 'TODO',
                      chrome: 'TODO',
                      safari: 'TODO',
                    ),
                    const CodeSnippetTemplate(
                      code: '''Semantics(
  label: 'Learn more about Disney World',
  button: true,
  child: ExcludeSemantics(
    child: ElevatedButton(
      onPressed: widget.onChangeTheme,
      child: Text('Learn More'),
    ),
  ),
)''',
                    ),
                  ],
                ),
              ),
            ],
          ),
          */
