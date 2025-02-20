import 'package:dailyx/core/di/di.dart';
import 'package:dailyx/core/helpers/icons.dart';
import 'package:dailyx/presentation/pages/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroke_text/stroke_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => di.get<LoginCubit>(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 218, 162),
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {},
          builder: (context, state) => Center(
            child: Column(
              children: [
                const Placeholder(),
                _buildLoginWithGoogleButton(context),
                // _buildLoginWithCredentialsButton(context),
              ],
            ),
          )
        ),
      ),
    );
  }

  // Widget _buildLoginWithCredentialsButton(BuildContext context) => ElevatedButton(
  //   style: ElevatedButton.styleFrom(
  //     side: const BorderSide()
  //   ),
  //   onPressed: () async => await BlocProvider.of<LoginCubit>(context).loginWithEmailAndPassword(), 
  //   child: const SizedBox(
  //     width: 250,
  //     child: Row(
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(left: 15),
  //           child: Icon(Icons.person, color: Colors.black,),
  //         ),
  //         Expanded(
  //           child: Center(
  //             child: StrokeText(
  //               text: 'Zaloguj z użyciem hasła',
  //               textStyle: TextStyle(fontSize: 15),
  //               strokeWidth: 1.5,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  // );

  Widget _buildLoginWithGoogleButton(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(
      side: const BorderSide()
    ),
    onPressed: () async => await BlocProvider.of<LoginCubit>(context).loginWithGmailProvider(), 
    child: SizedBox(
      width: 250,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SvgPicture.string(
              IconsRepository.googleLoginIcon(),
              width: 25,
              height: 25,
            ),
          ),
          const Expanded(
            child: Center(
              child: StrokeText(
                text: 'Zaloguj z Google',
                textStyle: TextStyle(fontSize: 18),
                strokeWidth: 1.5,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}