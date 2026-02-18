import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'managers/audio_manager.dart';
import 'package:flame/collisions.dart';

class FruitCatcherGame extends FlameGame with HasCollisionDetection {

  // Background color
  @override
  Color backgroundColor() => const Color(0xFF87CEEB); // sky blue

  // Score notifier
  final ValueNotifier<int> scoreNotifier = ValueNotifier<int>(0);

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // Play background music saat game mulai
    AudioManager().playBackgroundMusic();
  }

  // Method untuk increment score saat fruit kena basket
  void incrementScore() {
    scoreNotifier.value++;
  }
}
