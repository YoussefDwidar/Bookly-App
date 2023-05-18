import 'package:bookapp/core/utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utiles/app_routes.dart';

class CustumAppBar extends StatelessWidget {
  const CustumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 22,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(
                  AppRouter.kSearchView,
                );
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ))
        ],
      ),
    );
  }
}
