import 'package:deshi_bazaar/common/widgets/shapes/clipper/u_shape_clipper.dart';
import 'package:flutter/cupertino.dart';

class UShapeContainer extends StatelessWidget {
  const UShapeContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: UShapeClipper(), child: child);
  }
}
