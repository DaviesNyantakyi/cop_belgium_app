import 'package:flutter/material.dart';

import '../utilities/constant.dart';

Future<dynamic> showCustomBottomSheet({
  required BuildContext context,
  bool isDismissible = true,
  double? height,
  double? width,
  EdgeInsetsGeometry? padding,
  bool enableDrag = true,
  bool isScrollControlled = true,
  final Widget? header,
  Color? backgroundColor,
  required Widget child,
}) async {
  Widget buildHeader() {
    return SizedBox(height: header == null ? 0 : 64, child: header);
  }

  Widget buildBody() {
    return Flexible(
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }

  return showModalBottomSheet(
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    backgroundColor: backgroundColor,
    isScrollControlled: isScrollControlled,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(kRadius),
        topRight: Radius.circular(kRadius),
      ),
    ),
    context: context,
    builder: (context) {
      return SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: padding ?? const EdgeInsets.all(kContentSpacing16),
            child: Material(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(kRadius),
                topRight: Radius.circular(kRadius),
              ),
              color: backgroundColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  buildHeader(),
                  buildBody(),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
