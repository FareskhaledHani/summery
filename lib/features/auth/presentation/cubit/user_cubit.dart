import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/routes/app_navigator.dart';
import 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState.initial());

  //! get user selected language to use it in api calls
  String getCurrentLanguage() {
    final context = AppNavigator.navigatorKey.currentContext!;
    return context.locale.languageCode;
  }
}
