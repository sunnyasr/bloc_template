import 'package:bloc_course/bloc/login/login_bloc.dart';
import 'package:bloc_course/config/components/loading_widget.dart';
import 'package:bloc_course/config/routes/routes_name.dart';
import 'package:bloc_course/utils/enums.dart';
import 'package:bloc_course/utils/flush_bar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  final formKay;

  const LoginButton({super.key, required this.formKay});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen:
          (current, previous) =>
              current.postApiStatus != previous.postApiStatus,
      listener: (context, state) {
        if (state.postApiStatus == PostApiStatus.success) {
          Navigator.pushNamed(context, RoutesName.homeScreen);
        } else if (state.postApiStatus == PostApiStatus.error) {
          FlushBarHelper.flushBarErrorMessage('Error..${state.error}', context);
        }
      },
      buildWhen:
          (current, previous) =>
              current.postApiStatus != previous.postApiStatus,
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            if (formKay.currentState!.validate()) {
              context.read<LoginBloc>().add(LoginSubmit());
            }
          },
          child:
              state.postApiStatus == PostApiStatus.loading
                  ? LoadingWidget()
                  : Text('Login'),
        );
      },
    );
  }
}
