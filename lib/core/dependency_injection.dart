import 'package:get_it/get_it.dart';
import '../bloc/auth_bloc.dart';
import '../data/firebase_auth_service.dart';
import '../data/firestore_service.dart';
import '../repositories/auth_repository.dart';

final getIt = GetIt.instance;

Future<void> setupDependencyInjection() async {
  // Services
  getIt.registerLazySingleton(() => FirebaseAuthService());
  getIt.registerLazySingleton(() => FirestoreService());

  // Repositories
  getIt.registerLazySingleton<IAuthRepository>(
    () =>
        AuthRepository(getIt<FirebaseAuthService>(), getIt<FirestoreService>()),
  );

  // Blocs
  getIt.registerFactory(() => AuthBloc(getIt<IAuthRepository>()));
}
