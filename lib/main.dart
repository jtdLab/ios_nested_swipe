import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:ios_nested_swipe/router.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Router().config(),
    );
  }
}

@RoutePage()
class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(toString()),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () => context.navigateTo(const PageAARoute()),
          child: const Text('Push Page AA'),
        ),
      ),
    );
  }
}

@RoutePage()
class PageAA extends StatelessWidget {
  const PageAA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(toString()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'From here i want to swipe back and pop ShellA holding only PageAA and see PageA again\n'
              '\n'
              'Current Root Stack: ${context.router.root.stack.map((e) => e.name)}\n'
              'Current ShellA Stack: ${context.router.stack.map((e) => e.name)}',
            ),
          ),
          FilledButton(
            onPressed: () => context.maybePop(),
            child: const Text('Pop to Page A'),
          ),
          const Text('Doing it via context.maybePop works'),
        ],
      ),
    );
  }
}
