import 'package:bloc_course/config/routes/routes.dart';
import 'package:bloc_course/config/routes/routes_name.dart';
import 'package:bloc_course/repository/auth/login_http_api_repository.dart';
import 'package:bloc_course/repository/auth/login_mock_api_repository.dart';
import 'package:bloc_course/repository/auth/login_repository.dart';
import 'package:bloc_course/repository/movies/movies_http_api_repository.dart';
import 'package:bloc_course/repository/movies/movies_mock_api_repository.dart';
import 'package:bloc_course/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void main() {
  servicesLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
      home: SplashScreen(),
    );
  }
}

void servicesLocator() {
  getIt.registerLazySingleton<LoginRepository>(() => LoginMockApiRepository());
  getIt.registerLazySingleton<MoviesRepository>(
    () => MoviesHttpApiRepository(),
  );
}
