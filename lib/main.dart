import 'package:apitestinglogin/services/bloc/bloc/cubit/auth_cubit.dart';
import 'package:apitestinglogin/ui/auth/login.dart';
import 'package:apitestinglogin/ui/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:apitestinglogin/services/bloc/get_profile/get_profile_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthCubit>(
              create: (BuildContext context) => AuthCubit()),
          BlocProvider<GetProfileCubit>(
              create: (BuildContext context) => GetProfileCubit()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OrderScreen(),
        ));
  }
}
