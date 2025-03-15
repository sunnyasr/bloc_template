import 'package:bloc_course/bloc/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInputWidget extends StatelessWidget {
  final FocusNode passwordFocusNode;

  const PasswordInputWidget({super.key, required this.passwordFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) => current.password != previous.password,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.text,
          obscureText: true,
          focusNode: passwordFocusNode,
          decoration: InputDecoration(
            hintText: 'Password enter',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            context.read<LoginBloc>().add(PasswordChange(password: value));
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter Password';
            }
            return null;
          },

          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
