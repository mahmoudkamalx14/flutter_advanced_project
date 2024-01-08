import 'package:dio/dio.dart';
import 'package:flutter_advanced_project/core/networking/api_service.dart';
import 'package:flutter_advanced_project/core/networking/dio_factory.dart';
import 'package:flutter_advanced_project/features/login/data/repos/login_repo.dart';
import 'package:flutter_advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Service
  Dio dio = await DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
