import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene/blocs/auth/auth_bloc.dart';
import 'package:serene/blocs/auth/auth_event.dart';
import 'package:serene/blocs/auth/auth_state.dart';
import 'package:serene/shared/theme.dart';
import 'package:serene/ui/widgets/app_logo.dart';
import 'package:serene/ui/widgets/custom_button.dart';
import 'package:serene/ui/widgets/custom_text_field.dart';
import 'package:serene/ui/widgets/gradient_background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthAuthenticated) {
          Navigator.pushNamedAndRemoveUntil(context, '/chatscreen', (route) => false);
        } else if (state is AuthError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppLogo(),
                  SizedBox(height: 30),
                  Text(
                    'Halo, aku Serene', 
                    style: headingStyle.copyWith(
                      color: darkGray
                    )
                  ),
                  SizedBox(
                    height: 16
                  ),
                  Text(
                    'Aku di sini kapan pun \nkamu butuh teman.',
                    style: subHeadingStyle.copyWith(
                      color: darkGray,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // Email Field
                  CustomTextField(
                    controller: _emailController, 
                    hintText: "Email", 
                    obscureText: false, 
                    icon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Password Field
                  CustomTextField(
                    controller: _passwordController, 
                    hintText: "Password", 
                    obscureText: true, 
                    icon: Icons.lock,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      bool isLoading = state is AuthLoading;
        
                      return CustomButton(
                        text: 'Login',
                        onPressed: isLoading
                        ? null
                        : () {
                          if(_emailController.text.isEmpty || _passwordController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text('EMail dan Password harus diisi!'),
                              backgroundColor: Colors.orange,
                              )
                            );
                          } else {
                            context.read<AuthBloc>().add(
                              LoginRequested(
                                _emailController.text.trim(), 
                                _passwordController.text.trim()
                              )
                            );
                          }
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
