import 'package:bookapp/Features/splash/home/presentation/views/widget/castum_app_bar.dart';
import 'package:bookapp/Features/splash/home/presentation/views/widget/featured_list_view.dart';
import 'package:bookapp/core/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SafeArea(child: CustumAppBar()),
            ),
            FeaturedBooksListView(),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
