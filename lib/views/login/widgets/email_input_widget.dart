import 'package:bloc_course/bloc/login/login_bloc.dart';
import 'package:bloc_course/utils/validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/login/login_bloc.dart';

class EmailInputWidget extends StatelessWidget {
  final FocusNode emailFocusNode;

  const EmailInputWidget({super.key, required this.emailFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) => current.email != previous.email,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.text,
          focusNode: emailFocusNode,
          decoration: InputDecoration(
            hintText: 'Email enter',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            context.read<LoginBloc>().add(EmailChange(email: value));
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter email';
            } else if (!Validation.emailValidator(value)) {
              return 'Enter valid email';
            } else {
              return null;
            }
          },

          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
