import 'package:flower_boutique/feature/autorization/bloc/autorization_bloc.dart';
import 'package:flower_boutique/feature/catalog/ui/tab_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AutorizationScreen extends StatelessWidget {
  const AutorizationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 35,
            left: 5,
            right: -15,
            child: Image.asset('assets/floral.jpg'),
          ),
          BlocBuilder<AutorizationBloc, AutorizationState>(
            builder: (context, state) {
              return Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Flower Boutique',
                      style: GoogleFonts.dancingScript(
                        textStyle: const TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 143, 38, 73),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36),
                      child: TextField(
                        minLines: 1,
                        maxLines: 1,
                        onChanged: (value) => {
                          context.read<AutorizationBloc>().add(EmailChanged(value)),
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: 'Email',
                          errorText: state.emailError,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36),
                      child: TextField(
                        obscureText: state.isObscured,
                        keyboardType: TextInputType.number,
                        minLines: 1,
                        maxLines: 1,
                        onChanged: (value) => {
                          context.read<AutorizationBloc>().add(PasswordChanged(value)),
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: 'Password',
                          errorText: state.passwordError,
                          suffixIcon: IconButton(
                            onPressed: () => {
                              context.read<AutorizationBloc>().add(const ObscureChanged()),
                            },
                            icon: Icon(
                              state.isObscured ? Icons.visibility : Icons.visibility_off,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        if (state.isValid && state.allFieldEntered) {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => TabBarScreen()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 136,
                          vertical: 12,
                        ),
                        backgroundColor: const Color.fromARGB(255, 143, 38, 73),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text('Sign in'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account?'),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Sign up'),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
