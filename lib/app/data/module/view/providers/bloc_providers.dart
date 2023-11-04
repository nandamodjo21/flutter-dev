import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app_blocs.dart';
import '../bloc/login_blocs.dart';
import '../home_blocs.dart';

class AppBlocProviders{
  static get allBlocProviders=>[
    BlocProvider(lazy: false,  create: (context) => HomeBlocs(),),
    BlocProvider(lazy: false, create: (context) => AppBlocs(),),
    BlocProvider(create: (context)=> LoginBlocs(),),
  ];
}