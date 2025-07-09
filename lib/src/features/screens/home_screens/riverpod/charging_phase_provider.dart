import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ChargingPhase { ready, charging, complete }

class ChargingPhaseNotifier extends StateNotifier<ChargingPhase> {
  ChargingPhaseNotifier() : super(ChargingPhase.ready);

  // Method to update the current phase
  void setChargingPhase(ChargingPhase phase) {
    state = phase;
  }
}

// Provider to access the current phase state
final chargingPhaseProvider = StateNotifierProvider<ChargingPhaseNotifier, ChargingPhase>((ref) {
  return ChargingPhaseNotifier();
});
