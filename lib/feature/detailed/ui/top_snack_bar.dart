import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';

class TopSnackBar extends StatelessWidget {
  const TopSnackBar({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(6),
      child: CustomSnackBar.success(
        iconPositionTop: -12,
        iconPositionLeft: 8,
        iconRotationAngle: 1,
        backgroundColor: Colors.green,
        icon: const Icon(
          Icons.check_circle,
          color: Colors.white,
          size: 26,
        ),
        maxLines: 2,
        message: "Great! $name added to basket ",
      ),
    );
  }
}
