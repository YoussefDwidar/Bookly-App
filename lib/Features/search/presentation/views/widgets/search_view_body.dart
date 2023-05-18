import 'package:flutter/material.dart';
import '../../../../../core/utiles/styles.dart';
import '../../../../splash/home/presentation/views/best_seller_list_view_item.dart';
import 'custom_seach_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomSearchTextField(),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Search Result',
                style: Styles.textStyle18,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(child: SearchRelsultListview()),
        ],
      ),
    );
  }
}

class SearchRelsultListview extends StatelessWidget {
  const SearchRelsultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 15,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(),
        );
      },
    );
    ;
  }
}
