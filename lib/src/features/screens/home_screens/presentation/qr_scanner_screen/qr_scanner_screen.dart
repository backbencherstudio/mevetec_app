import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mevetec_app/src/core/routes/route_name.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../riverpod/qr_flash_provider.dart';

class QrScannerScreen extends ConsumerStatefulWidget {
  const QrScannerScreen({super.key});

  @override
  QrScannerScreenState createState() => QrScannerScreenState();
}

class QrScannerScreenState extends ConsumerState<QrScannerScreen> {
  final MobileScannerController scannerController = MobileScannerController();

  @override
  void dispose() {
    scannerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isFlashlightOn = ref.watch(flashlightProvider);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            MobileScanner(
              controller: scannerController,
              onDetect: (capture) {
                for (final barcode in capture.barcodes) {
                  final text = barcode.rawValue;
                  if (text != null && text.isNotEmpty) {
                    // Handle the scanned barcode here
                    debugPrint("Scanned barcode: $text");
                    // You can process the barcode value as needed
                  }
                  break; // Only handle the first barcode
                }
              },
            ),
            _buildOverlay(context, isFlashlightOn),
          ],
        ),
      ),
    );
  }

  Widget _buildOverlay(BuildContext context, bool isFlashlightOn) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.maxWidth * 0.75;
        final boxHeight = boxWidth;
        final topOffset = constraints.maxHeight * 0.25;
        final leftOffset = (constraints.maxWidth - boxWidth) / 2;

        return Stack(
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withValues(alpha: 0.6),
                BlendMode.srcOut,
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      backgroundBlendMode: BlendMode.dstOut,
                    ),
                  ),
                  Positioned(
                    top: topOffset,
                    left: leftOffset,
                    child: Container(
                      width: boxWidth,
                      height: boxHeight,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Orange border box
            Positioned(
              top: topOffset,
              left: leftOffset,
              child: Column(
                children: [
                  Container(
                    width: boxWidth,
                    height: boxHeight,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColorScheme.borderColor,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(48),
                    ),
                  ),
                  
                  SizedBox(height: 30,),
                  ElevatedButton(onPressed: (){
                    context.pushReplacement(RouteName.chargingPhase);
                  }, child: Text('Next'))
                ],
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pop(); // Close the screen
                      },
                      child: SvgPicture.asset('assets/icons/home/cross.svg'),
                    ),
                    Text('Scanning...'),
                    GestureDetector(
                      onTap: () {
                        ref.read(flashlightProvider.notifier).toggleFlashlight(scannerController);
                      },
                      child: isFlashlightOn
                          ? CircleAvatar(
                        child: Icon(
                          Icons.highlight,
                          color: Colors.white,
                          size: 25,
                        ),
                      )
                          : SvgPicture.asset(
                        'assets/icons/home/flash_light.svg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}