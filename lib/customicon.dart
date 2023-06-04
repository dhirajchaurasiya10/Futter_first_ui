import 'package:flutter/material.dart';

class CustomiconWidget extends StatelessWidget {
  const CustomiconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(0),
      child: IconButton(
        style:
            ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(2))),
        onPressed: () {
          print('back button pressed');
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_sharp,
          color: Colors.green,
        ),
      ),
    );
  }
}
