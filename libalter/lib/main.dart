import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const AlterApp());

class AlterApp extends StatelessWidget {
  const AlterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/feed',
      routes: [
        GoRoute(path: '/feed', builder: (c, s) => const FeedScreen()),
        GoRoute(path: '/chat', builder: (c, s) => const ChatScreen()),
        GoRoute(path: '/create', builder: (c, s) => const CreateAlterScreen()),
        GoRoute(path: '/compose', builder: (c, s) => const ComposerScreen()),
      ],
    );

    return MaterialApp.router(
      title: 'Alter',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF8A3FFC),
        brightness: Brightness.dark,
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      routerConfig: router,
    );
  }
}

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Feed')),
        body: const Center(child: Text('Feed screen')),
      );
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Chat')),
        body: const Center(child: Text('Chat screen')),
      );
}

class CreateAlterScreen extends StatelessWidget {
  const CreateAlterScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Create Alter')),
        body: const Center(child: Text('Wizard screen')),
      );
}

class ComposerScreen extends StatelessWidget {
  const ComposerScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Composer')),
        body: const Center(child: Text('Composer screen')),
      );
}
