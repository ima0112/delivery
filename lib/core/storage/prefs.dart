// 📦 Package imports:
import 'package:shared_preferences/shared_preferences.dart';

import '../../injection_container.dart';

int get theme => getIt<SharedPreferences>().getInt('theme') ?? 1;
set theme(int value) => getIt<SharedPreferences>().setInt('theme', value);
