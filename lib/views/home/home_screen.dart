import 'package:bloc_course/bloc/movies/movies_bloc.dart';
import 'package:bloc_course/config/components/loading_widget.dart';
import 'package:bloc_course/config/routes/routes_name.dart';
import 'package:bloc_course/main.dart';
import 'package:bloc_course/services/storage/local_storage.dart';
import 'package:bloc_course/utils/enums.dart';
import 'package:bloc_course/views/home/widgets/movies_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MoviesBloc _moviesBloc;

  @override
  void initState() {
    super.initState();
    _moviesBloc = MoviesBloc(moviesRepository: getIt());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              LocalStorage localStorage = LocalStorage();
              localStorage.clearValue('token').then((value) {
                localStorage.clearValue('isLogin').then((val) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    RoutesName.loginScreen,
                    (_) => false,
                  );
                });
              });
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: BlocProvider(
        create: (_) => _moviesBloc..add(MoviesFetched()),
        child: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            switch (state.moviesList.status) {
              case Status.loading:
                return LoadingWidget();
              case Status.error:
                return Center(child: Text(state.moviesList.message.toString()));
              case Status.completed:
                if (state.moviesList.data == null) {
                  return Center(child: Text('No data found'));
                }

                return MoviesList();
              default:
                return SizedBox();
            }
          },
        ),
      ),
    );
  }
}
