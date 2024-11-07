import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_router.dart';
import 'providers.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final elements = ref.watch(elementsProvider);

    // 增加子元素
    void addElement() {
      ref.read(elementsProvider.notifier).state = [
        ...elements,
        elements.length + 1
      ];
    }

    // 减少子元素
    void removeElement() {
      if (elements.isNotEmpty) {
        ref.read(elementsProvider.notifier).state =
            elements.sublist(0, elements.length - 1);
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text("动态网格布局")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: addElement, icon: Icon(Icons.add)),
              IconButton(onPressed: removeElement, icon: Icon(Icons.remove)),
            ],
          ),
          Expanded(child: ResponsiveGrid(elements: elements)),
        ],
      ),
    );
  }
}

class ResponsiveGrid extends StatelessWidget {
  final List<int> elements;
  const ResponsiveGrid({required this.elements});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = 100.0;
    final crossAxisCount = (screenWidth / itemWidth).floor();

    return LayoutBuilder(
      builder: (context, constraints) {
        return Wrap(
          spacing: 10,
          runSpacing: 10,
          children: List.generate(elements.length, (index) {
            return GestureDetector(
              onTap: () =>
                  context.router.push(DetailRoute(id: elements[index])),
              child: Container(
                width: constraints.maxWidth / crossAxisCount - 10,
                height: 100,
                color: Colors.blueAccent,
                alignment: Alignment.center,
                child: Text("子元素 ${elements[index]}"),
              ),
            );
          }),
        );
      },
    );
  }
}
