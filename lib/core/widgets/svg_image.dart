import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/sizes.dart';

class SvgImage extends StatelessWidget {
  final String path;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Function()? onTap;

  const SvgImage(
    this.path, {
    super.key,
    this.color,
    this.width,
    this.height,
    this.fit = BoxFit.scaleDown,
    this.onTap,
  });
  const factory SvgImage.icon(
    String path, {
    Key? key,
    Color? color,
    double size,
    BoxFit fit,
  }) = _SvgIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        path,
        colorFilter: color == null
            ? null
            : ColorFilter.mode(
                color!,
                BlendMode.srcIn,
              ),
        width: width,
        height: height,
        fit: fit,
      ),
    );
  }
}

class _SvgIcon extends SvgImage {
  const _SvgIcon(
    super.path, {
    super.key,
    super.color,
    super.fit,
    double size = Sizes.s24,
  }) : super(
          width: size,
          height: size,
        );
}
