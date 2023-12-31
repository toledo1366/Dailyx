import 'package:auto_route/auto_route.dart';
import 'package:dailyx/core/locator/locator.dart';
import 'package:dailyx/core/routing/app_router.dart';
import 'package:dailyx/presentation/pages/login/cubit/login_cubit.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),
        child: Scaffold(
          body: BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              if(state == const LoginState.success()){
                AutoRouter.of(context).navigate(const ControlPanelRoute());
              }
            },
            child: _buildContent(context),
        ),
      ),
    );  
  }

  Widget _buildContent(BuildContext context){
    return Center(
        child: GestureDetector(
          onTap: () async => await di.get<LoginCubit>().runLoginFlow(context),
          child: Container(
            width: 250,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.account_circle, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  'Login with Google', 
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ),
        ),
    );
  }
}
