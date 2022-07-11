import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paywell/src/presentation/blocs/mpin/mpin_bloc.dart';
import 'package:paywell/src/presentation/views/mpin_screen/mpin_screen.dart';
import 'src/config/constants/colors/colors.dart';
import 'src/config/themes/theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: transparent));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final MPinBloc mpBloc=MPinBloc();

  @override
  void initState(){
    super.initState();
    mpBloc.add(GetMPin());
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: Themes.lightTheme,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
          create: (_)=>mpBloc,
          child: BlocListener<MPinBloc,MPinState>(
            listener: (context,state){
              if (state is MPinAuthenticationFailed) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
              }
            },
            child: BlocBuilder<MPinBloc,MPinState>(
              builder: (context,state){
                if (state is MPinTyping) {

                }  else if(state is MPinAuthenticating){

                }
                  else if(state is MPinAuthenticated){
                  return const MPinScreen();
                }
                  else if(state is MPinAuthenticationFailed){
                    return Container();
                }
                  return Container();

              },
            ),
          ),
        ),


    );
  }
}


