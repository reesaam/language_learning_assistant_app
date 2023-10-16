import 'package:http/http.dart' as http;
import 'package:language_learning_assistant_app/core/app_core_functions.dart';
import 'package:language_learning_assistant_app/data/resources/app_texts.dart';
import 'package:language_learning_assistant_app/data/info/app_urls.dart';

class AppCheckUpdate {
  Future<String> checkVersion() async {
    String version = AppTexts.generalNotAvailableInitials;
    final response = await http.get(Uri.parse(AppURLs.appUrlResamHostVersion));
    appDebugPrint('Data HTTP Get:');
    appDebugPrint('Data body: ${response.body}');
    appDebugPrint('Status Code: ${response.statusCode}');
    response.statusCode == 200 ? version = response.body : null;
    return version;
  }
}
