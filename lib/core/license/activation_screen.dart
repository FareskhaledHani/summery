import 'package:flutter/material.dart';
import 'license_service.dart';

class ActivationScreen extends StatefulWidget {
  const ActivationScreen({super.key, required this.onActivated});

  final VoidCallback onActivated;

  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
  final _codeController = TextEditingController();
  String? _errorText;
  bool _isChecking = false;

  Future<void> _submit() async {
    setState(() {
      _isChecking = true;
      _errorText = null;
    });

    final success = await LicenseService.activate(_codeController.text);

    setState(() => _isChecking = false);

    if (success) {
      widget.onActivated();
    } else {
      setState(() => _errorText = 'الكود غير صحيح، تواصل مع الدعم الفني');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 24,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.lock_outline, size: 48, color: Colors.orange),
              const SizedBox(height: 16),
              const Text(
                'التطبيق محتاج تفعيل لهذا الشهر',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              const Text(
                'برجاء إدخال كود التفعيل الخاص بهذا الشهر',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: _codeController,
                textAlign: TextAlign.center,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  hintText: 'ادخل الكود هنا',
                  errorText: _errorText,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: _isChecking ? null : _submit,
                  child: _isChecking
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('تفعيل'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}