import 'package:dio/dio.dart';
import 'package:doc_bridge/core/networking/api_services.dart';
import 'package:doc_bridge/core/networking/dio_factory.dart';
import 'package:doc_bridge/features/login/data/repo/login_repo.dart';
import 'package:doc_bridge/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio &ApiServices
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
