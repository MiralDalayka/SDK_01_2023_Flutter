import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService{
  static String getConnectionValue(var connectivityResult) {
    String status = '';
    switch (connectivityResult) {
      case ConnectivityResult.mobile:
        status = 'Mobile';
        break;
      case ConnectivityResult.wifi:
        status = 'Wi-Fi';
        break;
      case ConnectivityResult.none:
        status = 'None';
        break;
      default:
        status = 'None';
        break;
    }
    return status;
  }

  static Future<bool> checkInternetConnectivity() async {
    final Connectivity connectivity = Connectivity();
    ConnectivityResult result = await connectivity.checkConnectivity();
    String connection = getConnectionValue(result);
    if (connection == 'None') {
      return false;
    } else {
      return true;
    }
  }

}