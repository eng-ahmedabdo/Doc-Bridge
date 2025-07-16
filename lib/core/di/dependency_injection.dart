import 'package:dio/dio.dart';
import 'package:doc_bridge/core/networking/api_services.dart';
import 'package:doc_bridge/core/networking/dio_factory.dart';
import 'package:doc_bridge/features/home/data/apis/home_api_service.dart';
import 'package:doc_bridge/features/login/data/repo/login_repo.dart';
import 'package:doc_bridge/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_bridge/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doc_bridge/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo.dart';
import '../../features/home/logic/home_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio &ApiServices
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  // registerLazySingleton => create only one instance and use it everywhere in the app
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // registerFactory => when i want login create anew instance
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // sign up
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  // registerFactory => when i want signup create anew instance
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  //getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
