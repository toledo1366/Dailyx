import 'package:dailyx/core/di/di.dart';
import 'package:dailyx/core/extension/colors_extension.dart';
import 'package:dailyx/core/helpers/icons.dart';
import 'package:dailyx/presentation/pages/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => di.get<LoginCubit>(),
      child: Scaffold(
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {},
          builder: (context, state) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 102),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Witaj ponownie ',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: ColorsExtension.fromHex('#171A1F')
                      ),
  
                    ),
                    const Icon(Icons.waving_hand_sharp,)
                  ],
                ),
              ),
              _buildLoginWithCredentialsButton(context),
              _buildLoginWithGoogleButton(context),
              Padding(
                padding: const EdgeInsets.only(),
                child: RichText(
                  text: TextSpan(
                    text: 'Nie masz konta?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: ColorsExtension.fromHex('#171A1F')
                    ),
                    children: [
                      // TextButton(onPressed: (){}, child: Text('Stwórz konto.'))
                    ]
                  )
                ),
              )
            ],
          )
        ),
      ),
    );
  }

  Widget _buildLoginWithCredentialsButton(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 56, left: 21, right: 21),
    child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Email',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: ColorsExtension.fromHex('#F3F4F6')
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Hasło',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter password',
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: ColorsExtension.fromHex('#F3F4F6'),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.visibility_off,
                  ),
                  onPressed: () {},
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 21, top: 66),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsExtension.fromHex('#636AE8'),
                  minimumSize: const Size(348, 52)
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Proces logowania
                  }
                },
                child: Text(
                  'Zaloguj się', 
                  style: TextStyle(
                    color: ColorsExtension.fromHex('#FFFFFF'),
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
  );

  Widget _buildLoginWithGoogleButton(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 24),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white
      ),
      onPressed: () async => await BlocProvider.of<LoginCubit>(context).loginWithGmailProvider(), 
      child: SizedBox(
        width: 200,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LUB ZALOGUJ Z',
              style: TextStyle(
                fontSize: 14, 
                color: ColorsExtension.fromHex('#6e7787'),
                fontWeight: FontWeight.w700
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: SvgPicture.string(
                IconsRepository.googleLoginIcon(),
                width: 26,
                height: 26,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}