import 'package:vcall_chat/data/network/network_api_services.dart';
import 'package:vcall_chat/res/app_url_EndPoint/app_url.dart';

class LoginRepositry {
  final _aoiService = NetworkApiServices();

  Future<Map<String, dynamic>> loginApi(var data) async {
    dynamic response = await _aoiService.postApi(data, AppUrl.login);
    if (response is Map) {
      return Map<String, dynamic>.from(response);
    } else {
      throw Exception('Response is not a Map');
    }
  }
}
