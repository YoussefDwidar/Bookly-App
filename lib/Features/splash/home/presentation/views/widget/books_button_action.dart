import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: const [
          Expanded(
            child: CustomButton(
              backgroundcolor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              text: '19.99€',
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundcolor: Color(0xffE68663),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              text: 'Free peview',
            ),
          ),
        ],
      ),
    );
  }
}
