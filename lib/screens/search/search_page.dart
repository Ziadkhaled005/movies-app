import 'package:flutter/material.dart';
import 'package:moviesapp/shared/style/colors/app_colores.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColors.moviesBackGround,
            ),
            child: TextField(
              style: Theme.of(context).textTheme.bodyMedium,
              cursorColor: AppColors.selectedIconColor,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 17),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.selectedIconColor,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      const BorderSide(color: AppColors.selectedIconColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      const BorderSide(color: AppColors.selectedIconColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      const BorderSide(color: AppColors.selectedIconColor),
                ),
              ),
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/images/no_movie.png',
            width: 100,
            height: 115,
            fit: BoxFit.fill,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
