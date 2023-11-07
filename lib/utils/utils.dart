import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Presentation/Router/router.imports.gr.dart';

class Utils {
  static Future<void> manipulation(context) async {
    var token = await getToken();

    if (token != null) {
      AutoRouter.of(context).push(const OnBoardScreenRoute());
    } else {
      AutoRouter.of(context).push(const AuthScreenRoute());
    }
  }

  static Future<void>    saveToken(String token) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("token", token);
  }

  static Future<String?> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("token");
  }
}
