import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnection internetConnectionChecker;

  NetworkInfoImpl({required this.internetConnectionChecker});
  @override
  Future<bool> get isConnected async =>
      await internetConnectionChecker.hasInternetAccess;
}
