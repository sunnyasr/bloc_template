import 'package:bloc_course/bloc/movies/movies_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        final moviesList = state.moviesList.data!;
        return ListView.builder(
          shrinkWrap: true,
          itemCount: moviesList.data.length,
          itemBuilder: (context, index) {
            var movie = moviesList.data[index];
            return Card(
              child: ListTile(
                leading: Image(image: NetworkImage(movie.avatar.toString())),
                title: Text(movie.firstName.toString()),
                subtitle: Text(movie.email.toString()),
                trailing: Text(movie.id.toString()),
              ),
            );
          },
        );
      },
    );
  }
}
