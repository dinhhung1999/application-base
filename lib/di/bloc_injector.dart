
import 'package:mobile_base/presentation/home/bloc/home_bloc.dart';

import 'injector.dart';

void injectorBloc() {
  sl.registerSingleton(HomeBloc());
}