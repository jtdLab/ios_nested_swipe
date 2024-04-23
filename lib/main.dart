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
          onPressed: () => context.pushRoute(const PageAARoute()),
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
          FilledButton(
            onPressed: () => context.pushRoute(const PageABRoute()),
            child: const Text('Push Page AB'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class PageAB extends StatelessWidget {
  const PageAB({super.key});

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
              'From here i want to swipe back and pop PageAB to show PageAA again\n'
              '\n'
              'But the back swipe pops the whole shell no matter it has multiple routes on the stack'
              'Is it possible to allow configuring that behaviour?'
              '\n'
              'Current Root Stack: ${context.router.root.stack.map((e) => e.name)}\n'
              'Current ShellA Stack: ${context.router.stack.map((e) => e.name)}',
            ),
          ),
          FilledButton(
            onPressed: () => context.maybePop(),
            child: const Text('Pop PageAB'),
          ),
        ],
      ),
    );
  }
}
