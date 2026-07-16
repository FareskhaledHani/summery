import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class OverlayLoadingPopScope extends StatefulWidget {
  const OverlayLoadingPopScope({super.key, required this.child});
  final Widget child;

  @override
  State<OverlayLoadingPopScope> createState() => _OverlayLoadingPopScopeState();
}

class _OverlayLoadingPopScopeState extends State<OverlayLoadingPopScope> {
  late final ValueNotifier<bool> _loadingNotifier;

  @override
  void initState() {
    super.initState();
    _loadingNotifier = ValueNotifier<bool>(false);
    EasyLoading.addStatusCallback(_statusCallback);
  }

  @override
  void dispose() {
    _loadingNotifier.dispose();
    EasyLoading.removeCallback(_statusCallback);
    super.dispose();
  }

  void _statusCallback(EasyLoadingStatus status) {
    if (status == EasyLoadingStatus.show) {
      _loadingNotifier.value = true;
    } else {
      _loadingNotifier.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _loadingNotifier,
      builder: (context, isLoading, child) => PopScope(
        canPop: isLoading == false,
        child: child!,
      ),
      child: widget.child,
    );
  }
}
