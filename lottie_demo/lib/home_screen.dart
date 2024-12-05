import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  /* 
      When you create an AnimationController, it requires a TickerProvider to drive the animation.
      SingleTickerProviderStateMixin provides that TickerProvider and ensures that the animation is properly synced with the screen's refresh rate.
      SingleTickerProviderStateMixin: This mixin is for cases where you only need one animation at a time in a State class.
      It allows the State object to act as a TickerProvider for a single AnimationController.
      */
  bool _isFavorite = false;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
      if (_isFavorite) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Animation')),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _toggleFavorite,
              child: Lottie.asset(
                'assets/lottie/favorite_animation.json',
                controller: _controller,
                onLoaded: (composition) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
