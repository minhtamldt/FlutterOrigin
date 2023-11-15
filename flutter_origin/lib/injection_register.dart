import 'package:dio/dio.dart';
import 'package:flutter_origin/config/routers/app_router.dart';
import 'package:flutter_origin/core/constants/api_contants.dart';
import 'package:flutter_origin/data/data_provider/remote/rest_api.dart';
import 'package:flutter_origin/data/data_provider/remote/rest_api_impl.dart';
import 'package:flutter_origin/presentation/pages/bookmark/bloc/bookmark_page_bloc.dart';
import 'package:flutter_origin/presentation/pages/bookmark/bloc/bookmark_page_state.dart';
import 'package:flutter_origin/presentation/pages/forgot_password/bloc/forgot_password_page_bloc.dart';
import 'package:flutter_origin/presentation/pages/forgot_password/bloc/forgot_password_page_state.dart';
import 'package:flutter_origin/presentation/pages/home/bloc/home_page_bloc.dart';
import 'package:flutter_origin/presentation/pages/home/bloc/home_page_state.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_bloc.dart';
import 'package:flutter_origin/presentation/pages/login/bloc/login_page_state.dart';
import 'package:flutter_origin/presentation/pages/search/bloc/search_page_bloc.dart';
import 'package:flutter_origin/presentation/pages/search/bloc/search_page_state.dart';
import 'package:flutter_origin/presentation/pages/setting/bloc/setting_page_bloc.dart';
import 'package:flutter_origin/presentation/pages/setting/bloc/setting_page_state.dart';
import 'package:flutter_origin/presentation/pages/signup/bloc/sign_up_page_state.dart';
import 'package:flutter_origin/presentation/pages/signup/bloc/signup_page_bloc.dart';
import 'package:flutter_origin/presentation/pages/tab_main/bloc/tabmain_page_bloc.dart';
import 'package:flutter_origin/presentation/pages/tab_main/bloc/tabmain_page_state.dart';
import 'package:get_it/get_it.dart';

class InjectionRegister {
  static GetIt get instance => _getIt;
  static final _getIt = GetIt.instance;

  static Future<void> initializeDependencies() async {
    //Register Routers:
    _getIt.registerSingleton<AppRouter>(AppRouter());

    //Register Services:
    _getIt.registerSingleton<Dio>(Dio());
    _getIt.registerSingleton<RestApi>(RestApiImpl(_getIt(), ApiContants.host));

    //Register Bloc:
    _getIt
        .registerFactory<LoginPageBloc>(() => LoginPageBloc(LoginPageState()));
    _getIt.registerFactory<ForgotPasswordPageBloc>(
        () => ForgotPasswordPageBloc(ForgotPasswordPageState()));
    _getIt.registerFactory<SignUpPageBloc>(
        () => SignUpPageBloc(SignUpPageState()));
    _getIt.registerFactory<TabMainPageBloc>(
        () => TabMainPageBloc(TabMainPageState()));
    _getIt.registerFactory<HomePageBloc>(() => HomePageBloc(HomePageState()));
    _getIt.registerFactory<SearchPageBloc>(
        () => SearchPageBloc(SearchPageState()));
    _getIt.registerFactory<BookmarkPageBloc>(
        () => BookmarkPageBloc(BookmarkPageState()));
    _getIt.registerFactory<SettingPageBloc>(
        () => SettingPageBloc(SettingPageState()));
  }
}
