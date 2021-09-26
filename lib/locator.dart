import 'package:get_it/get_it.dart';

import 'core/services/auth_data_service.dart';
import 'core/services/database_service.dart';
import 'core/services/location_service.dart';

GetIt locator = GetIt.instance;

setupLocator() {
//   locator.registerSingleton(ApiServices());
  locator.registerSingleton(AuthDataService());
  locator.registerSingleton(LocationService());
//   locator.registerSingleton(GeocodingApiService());

// //instantiating DatabaseServices as a lazySingleTone for dependencyInjection
  locator.registerLazySingleton<DatabaseService>(() => DatabaseService());
//
//  locator.registerFactory(() => ChatModel());
//  locator.registerFactory(() => ConversationModel());

//  locator.registerFactory(() => HomeModel());
//  locator.registerFactory(() => PrescriptionMainModel());
}
