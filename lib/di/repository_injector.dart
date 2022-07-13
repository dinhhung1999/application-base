
import 'package:mobile_base/data/repositories/example_repository_impl.dart';
import 'package:mobile_base/domain/repository/repository.dart';
import 'injector.dart';

void injectorRepository() {
  sl.registerLazySingleton<Repository>(() => ExampleRepositoryImpl());

}