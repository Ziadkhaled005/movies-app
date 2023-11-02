import 'package:flutter/material.dart';
import 'package:moviesapp/models/popular_response.dart';
import 'package:moviesapp/shared/database/api/api_manger.dart';
import 'package:moviesapp/shared/style/colors/app_colores.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PopularMovies>(
      future: ApiManger.getPopularMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
              child: CircularProgressIndicator(
            color: AppColors.selectedIconColor,
          ));
        }
        if (snapshot.connectionState == ConnectionState.none) {
          return const Center(
            child: Text('Please connect with internet'),
          );
        }

        var movies = snapshot.data?.results ?? [];
        return ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemBuilder: (context, index) => Text(
            movies[index].originalLanguage ?? '',
            style: const TextStyle(color: Colors.white),
          ),
          itemCount: movies.length,
        );
      },
    );
  }
}
