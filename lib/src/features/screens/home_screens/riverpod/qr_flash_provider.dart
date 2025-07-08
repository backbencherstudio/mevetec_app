// Define a StateNotifier to manage the flashlight state
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class FlashlightNotifier extends StateNotifier<bool> {
  FlashlightNotifier() : super(false); // false means flashlight is off initially

  // Method to toggle flashlight
  void toggleFlashlight(MobileScannerController controller) async {
    try {
      // Toggle flashlight using MobileScannerController's toggleTorch method
      if (state) {
        // Turn off the flashlight if it's on
        await controller.toggleTorch();
      } else {
        // Turn on the flashlight if it's off
        await controller.toggleTorch();
      }
      state = !state; // Toggle flashlight state
    } catch (e) {
      debugPrint("Error enabling flashlight: $e");
    }
  }
}

// Create a provider for the FlashlightNotifier
final flashlightProvider = StateNotifierProvider<FlashlightNotifier, bool>((ref) {
  return FlashlightNotifier();
});