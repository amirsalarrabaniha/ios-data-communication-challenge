import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zanis_sample/presentation/bloc/ios_data_bloc.dart';
import 'core/di/service_locator.dart';
import 'presentation/pages/home_page.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator<IOSDataCubit>()),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
