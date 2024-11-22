import 'package:bookly_app/core/utils/routers/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/feature/home/resentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/feature/home/resentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; //+

void main() {
  setup();
  runApp(
    // DevicePreview(
    //   builder: (context) => const BooklyAPP(), // Wrap your app
    // ),

    const BooklyAPP()
  );
}

class BooklyAPP extends StatelessWidget {
  const BooklyAPP({super.key});

  // This widget is the root of your application.//-
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchBestSellerBooks(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
