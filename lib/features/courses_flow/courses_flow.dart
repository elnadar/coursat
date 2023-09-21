import 'package:flutter/material.dart';

class CoursesFlow extends StatefulWidget {
  const CoursesFlow({super.key});

  @override
  State<CoursesFlow> createState() => _CoursesFlowState();
}

class _CoursesFlowState extends State<CoursesFlow> {
  late final PageController _pageController;
  void _nextPage() {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOutCubic);
  }

  void _prevPage() {
    _pageController.previousPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOutCubic);
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: const [
        ColoredBox(color: Colors.red),
        ColoredBox(color: Colors.green),
        ColoredBox(color: Colors.blue),
        ColoredBox(color: Colors.yellow),
      ],
    );
  }
}
